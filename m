Return-Path: <Tim.Bird@sonymobile.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 43F558A1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Aug 2014 16:44:17 +0000 (UTC)
Received: from seldrel01.sonyericsson.com (seldrel01.sonyericsson.com
	[212.209.106.2])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 67E9020308
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Aug 2014 16:44:16 +0000 (UTC)
From: "Bird, Tim" <Tim.Bird@sonymobile.com>
To: Andy Lutomirski <luto@amacapital.net>, Guenter Roeck <linux@roeck-us.net>
Date: Wed, 13 Aug 2014 18:44:13 +0200
Message-ID: <F5184659D418E34EA12B1903EE5EF5FD0130D4AC5B8F@seldmbx02.corpusers.net>
References: <53E38ED5.9000300@samsung.com> <53E43365.50809@hitachi.com>
	<53E8CF03.6020308@samsung.com> <53E8EB93.8030301@hitachi.com>
	<20140812130043.4894DC40C5C@trevor.secretlab.ca>
	<CACRpkdZL_1Enxd2dTnaEvZkHuCfV08f74ZOqFqaRtEdyMmwtvA@mail.gmail.com>
	<53EB8E4F.9090008@roeck-us.net>,
	<CALCETrXvoActJKwwfU_N6RmNP8xnhdAJ-Muf7hfmWquQOZzc-w@mail.gmail.com>
In-Reply-To: <CALCETrXvoActJKwwfU_N6RmNP8xnhdAJ-Muf7hfmWquQOZzc-w@mail.gmail.com>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: "shuah.kh@samsung.com" <shuah.kh@samsung.com>,
	Rob Landley <rob@landley.net>, "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] kselftest - What's in 3.17 and plans for 3.18
 and beyond
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wednesday, August 13, 2014 9:16 AM,Andy Lutomirski wrote:
>=20
> On Wed, Aug 13, 2014 at 9:11 AM, Guenter Roeck <linux@roeck-us.net> wrote=
:
> > On 08/13/2014 01:35 AM, Linus Walleij wrote:
> >>
> >> On Tue, Aug 12, 2014 at 3:00 PM, Grant Likely wrote:
> >>> I'm interested in this as well. I'm working on a tool that crossbuild=
s a
> >>> very simple busybox rootfs and boots in QEMU for as many architecture=
s
> >>> as possible. I want to make it easy to sanity test all the major
> >>> architectures. Right now it does little more than boot to a login
> >>> prompt, but I'd like to get the kselftests into it also.
> >>
> >>
> >> Hm that sounds like a goal similar to what Rob Landley has
> >> described as one goal for Aboriginal Linux as well.
> >> http://landley.net/aboriginal/about.html
> >>
> >
> > Yes, and to some degree buildroot.
> >
> > Rob's attempts to support multiple architectures also shows its limitat=
ions.
> > For example, his m68k images don't work, at least not for me, because t=
he
> > machine he uses (q800) is not supported in qemu 1.6 or 2.0 or 2.1.
> > I have been unable to find a working combination of kernel configuratio=
n,
> > qemu version, qemu command line, and root file system for m68k. Presuma=
bly
> > that must exist, because qemu supports m68k, I just have not been able
> > to figure out how to make it work.
> >
> > For my own qemu runtime tests, I ended up collecting root file systems =
and
> > kernel configurations from all over the place. And then there is the pr=
oblem
> > of qemu command line parameters, where each target and architecture req=
uires
> > its own set of options, and it is sometimes all but impossible to find =
a
> > working set of parameters for a given target/architecture combination.
> >
>=20
> virtme has exactly this problem (except for the root image part --
> virtme can use debootstrap output directly).  In virtme, I'm trying to
> solve it by just collecting known-working QEMU arguments and
> documenting the corresponding kernel config requirements.

I'm wondering if the kernel test tree might be a good place to keep such=20
virtual machine/QEMU configurations.  They should be only about 1 line
(or a few lines)  per machine, and they would be useful for automated testi=
ng.
I also think they won't change every kernel release, so it shouldn't lead t=
o the churn
problem we had with defconfigs.

Would there be objections to hosting this information in=20
the kernel source tree?
 -- Tim
