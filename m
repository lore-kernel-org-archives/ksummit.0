Return-Path: <jason@lakedaemon.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7B9DD990
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 23:04:44 +0000 (UTC)
Received: from outbound1.eu.mailhop.org (outbound1.eu.mailhop.org
	[52.28.251.132])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 74BD41B9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 23:04:43 +0000 (UTC)
Date: Mon, 1 Aug 2016 23:04:35 +0000
From: Jason Cooper <jason@lakedaemon.net>
To: Andy Lutomirski <luto@amacapital.net>
Message-ID: <20160801230435.GF4541@io.lakedaemon.net>
References: <1469934481.23563.274.camel@linux.vnet.ibm.com>
	<CALCETrWq0UZ176EKrp2jNkjFFn17twb8ZvfGKtRdD5E=iFAnBw@mail.gmail.com>
	<1469979098.23563.300.camel@linux.vnet.ibm.com>
	<CALCETrVQj23-0Bhsx91Z3O7BJdjDVXgPQSQUqXHoc+pd5+tfYA@mail.gmail.com>
	<1469986138.23563.312.camel@linux.vnet.ibm.com>
	<CALCETrV6y79898-+M8Mpvhm-e2_VXvSyQQPwY25YdeuJhCe1zg@mail.gmail.com>
	<20160801172920.GU3296@wotan.suse.de>
	<CALCETrX134Qnv4Xy2RAHO2QXka9_k9qAoEqrXaw-mX2kAkrzig@mail.gmail.com>
	<1470090069.23563.475.camel@linux.vnet.ibm.com>
	<CALCETrWY-xvF3ZKjt_r2azEk3Pc1An0_zd3WxPyTOFT4RUfwVQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALCETrWY-xvF3ZKjt_r2azEk3Pc1An0_zd3WxPyTOFT4RUfwVQ@mail.gmail.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Andy Lutomirski <luto@kernel.org>, Mark Brown <broonie@sirena.org.uk>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Last minute nominations: mcgrof and toshi
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Aug 01, 2016 at 03:36:51PM -0700, Andy Lutomirski wrote:
> On Mon, Aug 1, 2016 at 3:21 PM, Mimi Zohar <zohar@linux.vnet.ibm.com> wrote:
> > On Mo, 2016-08-01 at 10:59 -0700, Andy Lutomirski wrote:
> >
> >> Mimi, I'm curious: I don't fully understand what is covered by IMA
> >> policy.  How does the IMA kernel_read_file stuff deal with symlinks?
> >> For example, if I symlink /lib/firmware/iwlwifi-8265-21.ucode to
> >> /home/badguy/iwlwifi-8265-21.ucode, what happens?  What if I symlink
> >> /lib/firmware/iwlwifi-8265-21.ucode to /home/badguy/something_else?
> >> Or even /lib/modules/kernel/foo/bar.ko to /home/badguy/evil.ko?  The
> >> interesting case is where the "badguy" user is duly authorized to
> >> write to /home/badguy and holds whatever keys may be needed.
> >
> > Lets step back a second.  In order for a key to be added to the IMA
> > keyring, the key must be signed by a key on the builtin keyring.  The
> > key on the builtin keyring can be compiled into the kernel image or
> > added post build using Mehmet Kayaalp's patches.
> >
> > True, any key on the IMA keyring could be used to verify file signatures
> > (in IMA terminology appraise the file's integrity).  The enumeration is
> > a first step to making sure that only properly signed code is read by
> > the kernel.  The next step requires finer grain key management.  In
> > general, pathname based policies are not a good idea.  Whatever method
> > is defined, it should not be limited to just firmware or files read by
> > the kernel, but to all files.
> >
> 
> Unless I'm mistaken (which is quite possible), IMA is primarily
> intended to appraise the content of POSIX filesystems.  So, if IMA is
> in use, then doing:
> 
> $ cat /foo/bar
> 
> should only succeed if /foo/bar is signed according to loaded policy.
> It's the system administrator's decision what filesystem is actually
> mounted at /foo, and root can presumably mess around with application
> expectations by, say, bind-mounting something over /foo.
> 
> Modules and firmware are special: even root should not be able to
> avoid the full signature policy.  This means that, for example:
> 
> # mount --bind /evil /lib/firmware
> 
> should not result in violating policy.  So the pathname should not be
> used as such.  However, firmware is a bit special in that the driver
> chooses the pathname to request, and it really does uniquely identify
> the intended firmware.  So, when a driver asks for:
> 
> "iwlwifi-whatever.ucode"
> 
> and the driver core tries to read "/lib/firmware/iwlwifi-whatever.ucode"
> 
> it's entirely possible that we'll follow a symlink and end up
> elsewhere (Fedora, for example, does exactly this), but the file
> that's loaded should be appraised (or verified using a non-IMA means,
> etc.) to verify that whatever blob gets found is actually signed by
> the holder of an authorized key for the purpose of being used as
> "iwlwifi-whatever.ucode".

Assuming Andy's lightweight signature scheme, it would probably be best
to do a lookup based on the sha256 hash of the file.  Then pathnames
don't matter, and bad files don't even get to the signature checking
code.

thx,

Jason.
