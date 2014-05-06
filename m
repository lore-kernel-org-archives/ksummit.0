Return-Path: <davej@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 14E4AAF7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 13:16:58 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id BF53A1FDEC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 13:16:57 +0000 (UTC)
Date: Tue, 6 May 2014 09:16:48 -0400
From: Dave Jones <davej@redhat.com>
To: Jiri Kosina <jkosina@suse.cz>
Message-ID: <20140506131648.GA16222@redhat.com>
References: <alpine.LNX.2.00.1405022123320.29834@pobox.suse.cz>
	<CAGXu5j+oo0iga2AwyeH0OiW=LLWMyeDUDry7HpNrfv=O+bZd_Q@mail.gmail.com>
	<alpine.LNX.2.00.1405060901460.3969@pobox.suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.LNX.2.00.1405060901460.3969@pobox.suse.cz>
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

On Tue, May 06, 2014 at 09:05:53AM +0200, Jiri Kosina wrote:
 > On Mon, 5 May 2014, Kees Cook wrote:
 > 
 > > I'm very interested in this, especially as it may relate to security 
 > > exploit mitigation work, both in the sense of being able to arbitrarily 
 > > patch the kernel against flaws, and to defend against attackers being 
 > > able to ... er ... arbitrarily patch the kernel... :)
 > 
 > :) Well, for performing the patching, the attacker would either have to be 
 > able to modprobe module (kpatch, kgraft, ksplice) or kexec to a new kernel 
 > (criu-based solution). In either case, the system would be owned anyway 
 > already, independently on any live patching mechanism.

being root doesn't mean "can patch the kernel" if in secure boot mode.
(Or at least is going to need special considerations regarding signing).

	Dave
