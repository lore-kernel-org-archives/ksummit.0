Return-Path: <adobriyan@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2343194D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 20 Jul 2016 18:35:37 +0000 (UTC)
Received: from mail-lf0-f48.google.com (mail-lf0-f48.google.com
	[209.85.215.48])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 34E5D20A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 20 Jul 2016 18:35:36 +0000 (UTC)
Received: by mail-lf0-f48.google.com with SMTP id l69so44325577lfg.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 20 Jul 2016 11:35:36 -0700 (PDT)
Date: Wed, 20 Jul 2016 21:35:30 +0300
From: Alexey Dobriyan <adobriyan@gmail.com>
To: Jiri Kosina <jikos@kernel.org>
Message-ID: <20160720183530.GA2958@p183.telecom.by>
References: <87inw1skws.fsf@x220.int.ebiederm.org>
	<20160719173120.GE30372@sirena.org.uk>
	<alpine.LNX.2.00.1607192049170.24757@cbobk.fhfr.pm>
	<20160720155319.GG6509@sirena.org.uk>
	<alpine.LNX.2.00.1607201859270.24757@cbobk.fhfr.pm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.LNX.2.00.1607201859270.24757@cbobk.fhfr.pm>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] [TECH TOPIC] Support (or move
 towards to) LLVM
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Jul 20, 2016 at 07:04:59PM +0200, Jiri Kosina wrote:
> On Wed, 20 Jul 2016, Mark Brown wrote:
> 
> > > > There's a push from certain quarters to move away from GCC to LLVM.  
> > 
> > > This might actually be an interesting topic per se.
> > 
> > Yes, indeed.
> 
> Let's make this a real proposal then ... (subject changed). I am again a 
> bit unsure about the core / tech division here.
> 
> People who should be invited: proponents of the push from the certain 
> quarters mentioned by Mark above, and ideally some LLVM folks as well.

This is a bit premature until Linux Clang patchset is empty.
As an example, alternatives do not work and IIRC VLAs won't work ever:
https://llvm.org/bugs/show_bug.cgi?id=24487

Of course, compiling with Clang should be encouraged. At worst, it is
yet another static checker.
