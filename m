Return-Path: <dhowells@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 62FDBF99
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 10:05:46 +0000 (UTC)
Received: from mx1.redhat.com (mx3-rdu2.redhat.com [66.187.233.73])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0626971C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 10:05:45 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
In-Reply-To: <87y3cfymgr.fsf@intel.com>
References: <87y3cfymgr.fsf@intel.com>
	<17533.1536166384@warthog.procyon.org.uk>
	<nycvar.YFH.7.76.1809052132190.15880@cbobk.fhfr.pm>
	<CAFxkdAp6FxwT5XO9C_4_naSTEzs4iFosj+ijbK0rfW8FsyuMsA@mail.gmail.com>
	<32341.1536178494@warthog.procyon.org.uk>
	<CAFxkdAoiQMuzEq1Dv0=fO6uB2fLcc+0Wb+zuVvSFsAweROfhQQ@mail.gmail.com>
	<CALCETrVFSk=8eMyzsjkOPKne2kVuZzjyn5tLNDnB3ZaBGh1qrQ@mail.gmail.com>
To: Jani Nikula <jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <17242.1536228343.1@warthog.procyon.org.uk>
Date: Thu, 06 Sep 2018 11:05:43 +0100
Message-ID: <17243.1536228343@warthog.procyon.org.uk>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	joeyli.kernel@gmail.com, ksummit-discuss@lists.linuxfoundation.org,
	Justin Forbes <jmforbes@linuxtx.org>, Peter Jones <pjones@redhat.com>,
	Andy Lutomirski <luto@kernel.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Kernel lockdown and secure boot
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Jani Nikula <jani.nikula@intel.com> wrote:

> I guess I'm asking, have you considered an audit log for lockdown
> blocked access, and if you've rejected the idea, why?

It logs a message to dmesg telling you what caused the rejection.

David
