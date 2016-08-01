Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5A5BD83D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 22:37:14 +0000 (UTC)
Received: from mail-ua0-f177.google.com (mail-ua0-f177.google.com
	[209.85.217.177])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A0FB429B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 22:37:13 +0000 (UTC)
Received: by mail-ua0-f177.google.com with SMTP id k90so116686820uak.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 01 Aug 2016 15:37:13 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1470090069.23563.475.camel@linux.vnet.ibm.com>
References: <20160728165728.GR4541@io.lakedaemon.net>
	<1469830256.23563.200.camel@linux.vnet.ibm.com>
	<CALCETrUiYghc5uq9GHQRT--n15PBimhJwHA0TwgNqGxsbRKaFw@mail.gmail.com>
	<20160730163626.GP3296@wotan.suse.de>
	<1469934481.23563.274.camel@linux.vnet.ibm.com>
	<CALCETrWq0UZ176EKrp2jNkjFFn17twb8ZvfGKtRdD5E=iFAnBw@mail.gmail.com>
	<1469979098.23563.300.camel@linux.vnet.ibm.com>
	<CALCETrVQj23-0Bhsx91Z3O7BJdjDVXgPQSQUqXHoc+pd5+tfYA@mail.gmail.com>
	<1469986138.23563.312.camel@linux.vnet.ibm.com>
	<CALCETrV6y79898-+M8Mpvhm-e2_VXvSyQQPwY25YdeuJhCe1zg@mail.gmail.com>
	<20160801172920.GU3296@wotan.suse.de>
	<CALCETrX134Qnv4Xy2RAHO2QXka9_k9qAoEqrXaw-mX2kAkrzig@mail.gmail.com>
	<1470090069.23563.475.camel@linux.vnet.ibm.com>
From: Andy Lutomirski <luto@amacapital.net>
Date: Mon, 1 Aug 2016 15:36:51 -0700
Message-ID: <CALCETrWY-xvF3ZKjt_r2azEk3Pc1An0_zd3WxPyTOFT4RUfwVQ@mail.gmail.com>
To: Mimi Zohar <zohar@linux.vnet.ibm.com>
Content-Type: text/plain; charset=UTF-8
Cc: Jason Cooper <jason@lakedaemon.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	James Bottomley <James.Bottomley@hansenpartnership.com>,
	Mark Brown <broonie@sirena.org.uk>, Andy Lutomirski <luto@kernel.org>
Subject: Re: [Ksummit-discuss] Last minute nominations: mcgrof and toshi
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Aug 1, 2016 at 3:21 PM, Mimi Zohar <zohar@linux.vnet.ibm.com> wrote:
> On Mo, 2016-08-01 at 10:59 -0700, Andy Lutomirski wrote:
>
>> Mimi, I'm curious: I don't fully understand what is covered by IMA
>> policy.  How does the IMA kernel_read_file stuff deal with symlinks?
>> For example, if I symlink /lib/firmware/iwlwifi-8265-21.ucode to
>> /home/badguy/iwlwifi-8265-21.ucode, what happens?  What if I symlink
>> /lib/firmware/iwlwifi-8265-21.ucode to /home/badguy/something_else?
>> Or even /lib/modules/kernel/foo/bar.ko to /home/badguy/evil.ko?  The
>> interesting case is where the "badguy" user is duly authorized to
>> write to /home/badguy and holds whatever keys may be needed.
>
> Lets step back a second.  In order for a key to be added to the IMA
> keyring, the key must be signed by a key on the builtin keyring.  The
> key on the builtin keyring can be compiled into the kernel image or
> added post build using Mehmet Kayaalp's patches.
>
> True, any key on the IMA keyring could be used to verify file signatures
> (in IMA terminology appraise the file's integrity).  The enumeration is
> a first step to making sure that only properly signed code is read by
> the kernel.  The next step requires finer grain key management.  In
> general, pathname based policies are not a good idea.  Whatever method
> is defined, it should not be limited to just firmware or files read by
> the kernel, but to all files.
>

Unless I'm mistaken (which is quite possible), IMA is primarily
intended to appraise the content of POSIX filesystems.  So, if IMA is
in use, then doing:

$ cat /foo/bar

should only succeed if /foo/bar is signed according to loaded policy.
It's the system administrator's decision what filesystem is actually
mounted at /foo, and root can presumably mess around with application
expectations by, say, bind-mounting something over /foo.

Modules and firmware are special: even root should not be able to
avoid the full signature policy.  This means that, for example:

# mount --bind /evil /lib/firmware

should not result in violating policy.  So the pathname should not be
used as such.  However, firmware is a bit special in that the driver
chooses the pathname to request, and it really does uniquely identify
the intended firmware.  So, when a driver asks for:

"iwlwifi-whatever.ucode"

and the driver core tries to read "/lib/firmware/iwlwifi-whatever.ucode"

it's entirely possible that we'll follow a symlink and end up
elsewhere (Fedora, for example, does exactly this), but the file
that's loaded should be appraised (or verified using a non-IMA means,
etc.) to verify that whatever blob gets found is actually signed by
the holder of an authorized key for the purpose of being used as
"iwlwifi-whatever.ucode".

The current API can't do this cleanly no matter how IMA implements the LSM hook.

--Andy
