Return-Path: <jani.nikula@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8C1CAD6F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 10:01:11 +0000 (UTC)
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3336E713
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 10:01:11 +0000 (UTC)
From: Jani Nikula <jani.nikula@intel.com>
To: Andy Lutomirski <luto@kernel.org>, Justin Forbes <jmforbes@linuxtx.org>
In-Reply-To: <CALCETrVFSk=8eMyzsjkOPKne2kVuZzjyn5tLNDnB3ZaBGh1qrQ@mail.gmail.com>
References: <17533.1536166384@warthog.procyon.org.uk>
	<nycvar.YFH.7.76.1809052132190.15880@cbobk.fhfr.pm>
	<CAFxkdAp6FxwT5XO9C_4_naSTEzs4iFosj+ijbK0rfW8FsyuMsA@mail.gmail.com>
	<32341.1536178494@warthog.procyon.org.uk>
	<CAFxkdAoiQMuzEq1Dv0=fO6uB2fLcc+0Wb+zuVvSFsAweROfhQQ@mail.gmail.com>
	<CALCETrVFSk=8eMyzsjkOPKne2kVuZzjyn5tLNDnB3ZaBGh1qrQ@mail.gmail.com>
Date: Thu, 06 Sep 2018 13:00:36 +0300
Message-ID: <87y3cfymgr.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Peter Jones <pjones@redhat.com>, joeyli.kernel@gmail.com,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Kernel lockdown and secure boot
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 05 Sep 2018, Andy Lutomirski <luto@kernel.org> wrote:
> 2. What exactly does lockdown do?
>
> #2 is a bigger deal.  At least one version that shipped in a Fedora
> kernel actually broke systemd, and that's not cool.  And I really
> think we need to make lockdown non-binary to get this right.  I've
> proposed LOCKDOWN_PROTECT_INTEGRITY (i.e. try to prevent root from
> modifying the running kernel) and LOCKDOWN_PROTECT_SECRECY (try to
> prevent root from reading kernel memory), and no one seems to have
> actually objected.

Clueless bystander comment: I spent a while debugging a bug reporter's
-EPERM issue on direct PCI bar access. Took me a while to realize this
was caused by kernel lockdown on the user's distro. I expect more issues
like this to pop up as the use of lockdown proliferates, and I don't
think it's necessarily obvious when lockdown changes behaviour.

I guess I'm asking, have you considered an audit log for lockdown
blocked access, and if you've rejected the idea, why?

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
