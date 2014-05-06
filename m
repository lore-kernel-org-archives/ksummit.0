Return-Path: <jkosina@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id EB6FDAF3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 13:23:46 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 83DB520114
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 13:23:46 +0000 (UTC)
Date: Tue, 6 May 2014 15:23:43 +0200 (CEST)
From: Jiri Kosina <jkosina@suse.cz>
To: Dave Jones <davej@redhat.com>
In-Reply-To: <20140506131648.GA16222@redhat.com>
Message-ID: <alpine.LNX.2.00.1405061521340.3969@pobox.suse.cz>
References: <alpine.LNX.2.00.1405022123320.29834@pobox.suse.cz>
	<CAGXu5j+oo0iga2AwyeH0OiW=LLWMyeDUDry7HpNrfv=O+bZd_Q@mail.gmail.com>
	<alpine.LNX.2.00.1405060901460.3969@pobox.suse.cz>
	<20140506131648.GA16222@redhat.com>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] [TECH TOPIC] live kernel patching
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 6 May 2014, Dave Jones wrote:

>  > > I'm very interested in this, especially as it may relate to security 
>  > > exploit mitigation work, both in the sense of being able to arbitrarily 
>  > > patch the kernel against flaws, and to defend against attackers being 
>  > > able to ... er ... arbitrarily patch the kernel... :)
>  > 
>  > :) Well, for performing the patching, the attacker would either have to be 
>  > able to modprobe module (kpatch, kgraft, ksplice) or kexec to a new kernel 
>  > (criu-based solution). In either case, the system would be owned anyway 
>  > already, independently on any live patching mechanism.
> 
> being root doesn't mean "can patch the kernel" if in secure boot mode.
> (Or at least is going to need special considerations regarding signing).

This is not about root, this is about "being able to load modules" 
implying "being able to patch the kernel", both in and outside secure boot 
model, so this is a non-issue.

-- 
Jiri Kosina
SUSE Labs
