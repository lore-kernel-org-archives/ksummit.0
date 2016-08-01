Return-Path: <zohar@linux.vnet.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8DB9093D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 23:03:06 +0000 (UTC)
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
	[148.163.158.5])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 03333A9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  1 Aug 2016 23:03:05 +0000 (UTC)
Received: from pps.filterd (m0098421.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.11/8.16.0.11) with SMTP id
	u71Ms4qg126685 for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 1 Aug 2016 19:03:05 -0400
Received: from e28smtp05.in.ibm.com (e28smtp05.in.ibm.com [125.16.236.5])
	by mx0a-001b2d01.pphosted.com with ESMTP id 24gr7vjpja-1
	(version=TLSv1.2 cipher=AES256-SHA bits=256 verify=NOT)
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 01 Aug 2016 19:03:05 -0400
Received: from localhost
	by e28smtp05.in.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use
	Only! Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<zohar@linux.vnet.ibm.com>; Tue, 2 Aug 2016 04:33:00 +0530
Received: from d28relay03.in.ibm.com (d28relay03.in.ibm.com [9.184.220.60])
	by d28dlp01.in.ibm.com (Postfix) with ESMTP id AD3EDE005B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 04:37:17 +0530 (IST)
Received: from d28av05.in.ibm.com (d28av05.in.ibm.com [9.184.220.67])
	by d28relay03.in.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
	u71N2vIT5243160 for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 2 Aug 2016 04:32:58 +0530
Received: from d28av05.in.ibm.com (localhost [127.0.0.1])
	by d28av05.in.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP id
	u71N2sFP029343 for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 2 Aug 2016 04:32:57 +0530
From: Mimi Zohar <zohar@linux.vnet.ibm.com>
To: Andy Lutomirski <luto@amacapital.net>
Date: Mon, 01 Aug 2016 19:02:39 -0400
In-Reply-To: <CALCETrWY-xvF3ZKjt_r2azEk3Pc1An0_zd3WxPyTOFT4RUfwVQ@mail.gmail.com>
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
	<CALCETrWY-xvF3ZKjt_r2azEk3Pc1An0_zd3WxPyTOFT4RUfwVQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Message-Id: <1470092559.23563.494.camel@linux.vnet.ibm.com>
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

On Mo, 2016-08-01 at 15:36 -0700, Andy Lutomirski wrote:
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

The policy does support specifying a UUID to differentiate between file
systems.

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

Right, if both /foo/bar and the symlink are validly signed by keys on
the IMA keyring, then either will succeed.  Previously in this thread, I
suggested extending the policy language to explicitly say which keys are
permitted on a per rule basis.

> The current API can't do this cleanly no matter how IMA implements the LSM hook.

I think it is a bit premature to claim that IMA would not be able to
support an extended policy as you describe under any circumstances.

Mimi
