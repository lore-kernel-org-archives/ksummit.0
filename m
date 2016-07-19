Return-Path: <ebiederm@xmission.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 70CA8256
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Jul 2016 20:52:18 +0000 (UTC)
Received: from out01.mta.xmission.com (out01.mta.xmission.com [166.70.13.231])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 21FB6198
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 19 Jul 2016 20:52:18 +0000 (UTC)
From: ebiederm@xmission.com (Eric W. Biederman)
To: Jiri Kosina <jikos@kernel.org>
References: <87inw1skws.fsf@x220.int.ebiederm.org>
	<20160719173120.GE30372@sirena.org.uk>
	<alpine.LNX.2.00.1607192049170.24757@cbobk.fhfr.pm>
Date: Tue, 19 Jul 2016 15:39:23 -0500
In-Reply-To: <alpine.LNX.2.00.1607192049170.24757@cbobk.fhfr.pm> (Jiri
	Kosina's message of "Tue, 19 Jul 2016 20:52:33 +0200 (CEST)")
Message-ID: <871t2ppdl0.fsf@x220.int.ebiederm.org>
MIME-Version: 1.0
Content-Type: text/plain
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] More useful types in the linux
	kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Jiri Kosina <jikos@kernel.org> writes:

> On Tue, 19 Jul 2016, Mark Brown wrote:
>
>> There's a push from certain quarters to move away from GCC to LLVM.  
>
> This might actually be an interesting topic per se.
>
> LLVM definitely has quite some nice features, but their attitude towards 
> bugs which are rather severe for kernel programming should be taken as a 
> warning at least. Look at the "pushf/popf being generated around 
> local_irq_save()" trainwreck as an example.

We have the precedent of sparse that shows how we can have extended
types with the existing compiler seeing the ordinary types.  I can't
imagine doing anything different if we continue to use C code.  Anything
would just be silly.

I can see value in a kernel that multiple compilers can build. But so
far a switch to llvm looks scary.

Eric
