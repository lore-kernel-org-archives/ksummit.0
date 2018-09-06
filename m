Return-Path: <jani.nikula@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E26BBF94
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 10:22:00 +0000 (UTC)
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9CAE18B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  6 Sep 2018 10:22:00 +0000 (UTC)
From: Jani Nikula <jani.nikula@intel.com>
To: David Howells <dhowells@redhat.com>
In-Reply-To: <17243.1536228343@warthog.procyon.org.uk>
References: <87y3cfymgr.fsf@intel.com>
	<17533.1536166384@warthog.procyon.org.uk>
	<nycvar.YFH.7.76.1809052132190.15880@cbobk.fhfr.pm>
	<CAFxkdAp6FxwT5XO9C_4_naSTEzs4iFosj+ijbK0rfW8FsyuMsA@mail.gmail.com>
	<32341.1536178494@warthog.procyon.org.uk>
	<CAFxkdAoiQMuzEq1Dv0=fO6uB2fLcc+0Wb+zuVvSFsAweROfhQQ@mail.gmail.com>
	<CALCETrVFSk=8eMyzsjkOPKne2kVuZzjyn5tLNDnB3ZaBGh1qrQ@mail.gmail.com>
	<17243.1536228343@warthog.procyon.org.uk>
Date: Thu, 06 Sep 2018 13:21:16 +0300
Message-ID: <87sh2nylib.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 06 Sep 2018, David Howells <dhowells@redhat.com> wrote:
> Jani Nikula <jani.nikula@intel.com> wrote:
>
>> I guess I'm asking, have you considered an audit log for lockdown
>> blocked access, and if you've rejected the idea, why?
>
> It logs a message to dmesg telling you what caused the rejection.

Ah, good. Looks like this was added at some point, and the user was
running kernel lockdown without this.

Thanks,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
