Return-Path: <Tim.Bird@sony.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9C4F0B43
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 Aug 2017 17:43:01 +0000 (UTC)
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam01on0136.outbound.protection.outlook.com [104.47.34.136])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 29E661C0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 Aug 2017 17:43:00 +0000 (UTC)
From: "Bird, Timothy" <Tim.Bird@sony.com>
To: Theodore Ts'o <tytso@mit.edu>, Shuah Khan <shuahkh@osg.samsung.com>
Date: Thu, 3 Aug 2017 17:42:54 +0000
Message-ID: <ECADFF3FD767C149AD96A924E7EA6EAF3AD01BAB@USCULXMSG01.am.sony.com>
References: <a462fb3b-a6d4-e969-b301-b404981de224@roeck-us.net>
	<20170705112707.54d7f345@gandalf.local.home>
	<c782a15a-4e73-7373-ca66-5b55e9406059@roeck-us.net>
	<20170705130200.7c653f61@gandalf.local.home>	<87zibkzgve.fsf@xmission.com>
	<fb399eba-91eb-21a5-e3f5-c3f919061c12@osg.samsung.com>
	<87lgn1nac8.fsf@xmission.com>
	<61093c3f-6ad0-c033-a524-f2624f8d55ba@osg.samsung.com>
	<87r2wtluc1.fsf@xmission.com>
	<92c31d6f-f98d-c764-eeec-bd0a2316d769@osg.samsung.com>
	<20170803030327.gf7pl7foer3abdpe@thunk.org>
In-Reply-To: <20170803030327.gf7pl7foer3abdpe@thunk.org>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: Carlos O'Donell <carlos@redhat.com>,
	"linux-api@vger.kernel.org" <linux-api@vger.kernel.org>,
	Shuah Khan <shuah@kernel.org>, Thorsten Leemhuis <linux@leemhuis.info>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] & [TECH TOPIC] Improve
 regression tracking
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>



> -----Original Message-----
> From: Theodore Ts'o on Wednesday, August 02, 2017 8:03 PM
>=20
> On Wed, Aug 02, 2017 at 12:42:04PM -0600, Shuah Khan wrote:
> > >>> $ make O=3D$PWD-build -j8 kselftests
> > >>> make[1]: Entering directory 'linux-build'
> > >>> make[1]: *** No rule to make target 'kselftests'.  Stop.
> > >>> make[1]: Leaving directory 'linux-build'
> > >>> Makefile:145: recipe for target 'sub-make' failed
> > >>> make: *** [sub-make] Error 2
> >
> > There are multiple ways to run selftests at the moment. If your
> > preferred use-case isn't supported, I don't see why it can't be
> > added.
>=20
> There are many of us who use separate object directories so we can
> build the same kernel tree with multiple configurations.  So for
> example, my kernel sources will be on an SSD, but sometimes my /build
> directory will be on a HDD since storing the object files on an HDD
> don't really buy as much as keeping the sources on SSD.
>=20
> For example, so I might be doing builds via:
>=20
> make O=3D/build/ext4 -j8
>=20
>    and
>=20
> make O=3D/build/ext4-32 ARCH=3Di386 -j8
>=20
> Or someone might have a separate config file for doing debugging which
> is different from their production kernel, which they could do by
> having a different .config file in /build/ext4-debug/.config.
>=20
> > >> It is "make kselftest"
> > >
> > > If I include the standard O=3D to keep my source tree pristine
> > > it still fails.  Which is a practical issue.  Especially because
> > > that "make kselftest" needs to be followed by I think "make mrproper"
> > > to get back to my normal development workflow.
> >
> > Hmm. not sure why you would need to run "make mrproper" after running
> > "make kselftest" - I never have to. I would like to understand why thou=
gh
> > if you are seeing problems without running "make mrproper".
>=20
> The problem is that if you are doing builds in separate object
> directories, you must not have any build files in the source tree.
> Otherwise make gets terribly confused.  If you have done a build in
> the source tree, then "make O=3D..." will because the Kernel makefile
> system has safety check which detects this case and complains:
>=20
> % make O=3D/build/linux-build
> make[1]: Entering directory '/build/linux-build'
>   CHK     include/config/kernel.release
>   GEN     ./Makefile
>   CHK     include/generated/uapi/linux/version.h
>   CHK     scripts/mod/devicetable-offsets.h
>   Using /home/tytso/linux/linux as source for kernel
>   /home/tytso/linux/linux is not clean, please run 'make mrproper'
>   ...
>=20
> So this is why Eric said that he has to run "make mrproper" after
> doing "make kselftest".  That's because doing any kind of build in the
> source tree breaks his (and my) normal kernel building system.
>=20
> Personally, I do all of my testing using xfstests (and gce-xfstests in
> particular).  And so I don't have a lot of reason to spend time making
> kselftest work with the "make O=3Dxxx" build paradigm.
>=20
> It's fair to say the fact that kselftest doesn't work with my kernel
> development workflow hasn't helped my motivation to try it out.  But
> as I told the systemtap folks many years ago --- "you're not under any
> obligation to support my workflow; but if systemtap is hostile to my
> kernel development workflow, you also can't expect me to help support
> and grow the use of systemtap, either.  It works both ways."
>=20
> The same I think applies to kselftest.  Telling developers who
> complain that kselftest doesn't work well with their workflow to "send
> a patch" may not result in the reaction that you hope.  Especially for
> something as similar as "make O=3Dxxx", which I think is a pretty common
> development workflow.  Anyway, I hope someone will care enough about
> kselftest to help support "make O=3Dxxx"; I have to admit that someone
> isn't me, though.  Sorry; I just don't have the time....

My preferred method of building for embedded boards also uses "make O=3Dxxx=
"
It's been on my to do list for a while to add support for that (KBUILD_OUTP=
UT)
to kselftest, but it's one of those things I never got around to.

Now that I know it's blocking other kernel developers, I'll prioritize it h=
igher.

Shuah - if no one else steps up to do this, I'll try to see if I can find t=
ime to
do it in the next month or two (no promises).  I think support for KBUILD_O=
UTPUT
(or "make O=3Dxxx") is pretty important.=20
   -- Tim=20
