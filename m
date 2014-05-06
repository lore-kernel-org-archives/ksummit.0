Return-Path: <jkosina@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 2BAE7AEB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 07:05:56 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B30241FC59
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 07:05:55 +0000 (UTC)
Date: Tue, 6 May 2014 09:05:53 +0200 (CEST)
From: Jiri Kosina <jkosina@suse.cz>
To: Kees Cook <keescook@chromium.org>
In-Reply-To: <CAGXu5j+oo0iga2AwyeH0OiW=LLWMyeDUDry7HpNrfv=O+bZd_Q@mail.gmail.com>
Message-ID: <alpine.LNX.2.00.1405060901460.3969@pobox.suse.cz>
References: <alpine.LNX.2.00.1405022123320.29834@pobox.suse.cz>
	<CAGXu5j+oo0iga2AwyeH0OiW=LLWMyeDUDry7HpNrfv=O+bZd_Q@mail.gmail.com>
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

On Mon, 5 May 2014, Kees Cook wrote:

> I'm very interested in this, especially as it may relate to security 
> exploit mitigation work, both in the sense of being able to arbitrarily 
> patch the kernel against flaws, and to defend against attackers being 
> able to ... er ... arbitrarily patch the kernel... :)

:) Well, for performing the patching, the attacker would either have to be 
able to modprobe module (kpatch, kgraft, ksplice) or kexec to a new kernel 
(criu-based solution). In either case, the system would be owned anyway 
already, independently on any live patching mechanism.

-- 
Jiri Kosina
SUSE Labs
