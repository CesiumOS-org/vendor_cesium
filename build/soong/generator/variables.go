package generator

import (
	"fmt"

	"android/soong/android"
)

func cesiumExpandVariables(ctx android.ModuleContext, in string) string {
	cesiumVars := ctx.Config().VendorConfig("cesiumVarsPlugin")

	out, err := android.Expand(in, func(name string) (string, error) {
		if cesiumVars.IsSet(name) {
			return cesiumVars.String(name), nil
		}
		// This variable is not for us, restore what the original
		// variable string will have looked like for an Expand
		// that comes later.
		return fmt.Sprintf("$(%s)", name), nil
	})

	if err != nil {
		ctx.PropertyErrorf("%s: %s", in, err.Error())
		return ""
	}

	return out
}
