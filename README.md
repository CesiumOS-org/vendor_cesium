<p align="center">
<img src="https://i.postimg.cc/ht3j97Wk/CSBanner-Logo.png" > 

Getting Started
==================================================
>> To get started with the building process, you'll need to get familiar with [Git and Repo](http://source.android.com/source/using-repo.html).

>> To initialize your local repository, use a command like this:

```bash
    repo init --depth=1 -u git://github.com/CesiumOS/manifest.git -b ten
```

>> Then to sync up:

```bash
     repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
```

Compilation of Cesium OS:
====================
>> From root directory of Project, perform following commands in terminal


```bash
source build/envsetup.sh
lunch cesium_<devicecodename>-userdebug
make bacon
```
-----------------------------------------	
Getting Official Maintainership for CesiumOS
==========================================
>> To get Official Maintainership for CesiumOS you should have a stable device source with all the main components working.

>> First make an unofficial build of CesiumOS and post in [**XDA**](xda-developers.com).

>> Then, Ping us on Telegram :- [**bunnyy**](https://t.me/bun_nyy) or [**Sahil**](https://t.me/SahilSonar) 

>> Join our [**Telegram Channel**](https://t.me/cesiumos_channel) and our  [**Telegram group**](https://t.me/cesiumos_official)

>> To publish builds use our Template : [**CesiumOS XDA Template**](https://github.com/CesiumOS/CesiumOS-Template)


----------------------------

Submitting Patches
==================
CesiumOS is an open source project thus any patches/contributions are always welcome !

To begin with, you need to login to our code review system at [CesiumOS Code Review](http://cesiumos.me)

We support login using Github Oauth provider, which means if you have either of account you can login to gerrit by that account.
It is important that you set the USERNAME in your account on gerrit. If you have logged in using Github account then your Github USERNAME will be used as gerrit USERNAME automatically. Else you can set unique username in `Profile` section of gerrit account Settings.

The next step is to add your SSH key to your gerrit account.

Refer the Github guide on [how to generate SSH key](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/)

Add the generated SSH key (the contents of id_rsa.pub file) to your gerrit account in `SSH Public Keys` section.


You can upload the patches/contributions for review process using following procedure:

```bash
git clone PROJECT
```

For Example -  git clone http://cesiumos.me/CesiumOS/packages_apps_Settings

```bash
cd CLONED_DIRECTORY
```

Make the changes you wish to add for review and execute following commands,

```bash
git add -A
git commit -m "commit message"
```

Commit message should be clear, well written and easy to understand.

If you have satisfied with the changes you made then you can upload the patchset to gerrit.

```bash
git push ssh://USERNAME@cesiumos.me:29418/PROJECT_NAME HEAD:refs/for/ten
```

Here the PROJECT_NAME is the path to repository on gerrit. You can find the PROJECT_NAME by navigating to the `Projects` section on gerrit.

For example - CesiumOS/packages_apps_Settings

It is recommended that you commit your several relevent patches in to one single commit.

Squash multiple commits using this command:

```bash
git rebase -i HEAD~<# of commits>
```

If you are going to make extra changes to an existing patch, Don't start a new patch, instead

```bash
git add .

git commit --amend
```
and simply push the changes to gerrit

Gerrit will recognize it as a new patchset in an exisiting commit.

To view the status of your and/or others patches, visit [CesiumOS Code Review](http://cesiumos.me)

<p align="center">
<img src="https://i.postimg.cc/ht3j97Wk/CSBanner-Logo.png" > 


