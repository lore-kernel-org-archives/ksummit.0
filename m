Return-Path: <jani.nikula@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1678E413
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 10:48:12 +0000 (UTC)
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 95592198
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Aug 2016 10:48:11 +0000 (UTC)
From: Jani Nikula <jani.nikula@intel.com>
To: David Howells <dhowells@redhat.com>,
	"Eric W. Biederman" <ebiederm@xmission.com>
In-Reply-To: <25598.1469113525@warthog.procyon.org.uk>
References: <87inw1skws.fsf@x220.int.ebiederm.org>
	<25598.1469113525@warthog.procyon.org.uk>
Date: Tue, 02 Aug 2016 13:48:09 +0300
Message-ID: <87poprsaza.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] More useful types in the
	linux	kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 21 Jul 2016, David Howells <dhowells@redhat.com> wrote:
>  (3) Let's use bool a lot more for boolean values as the compiler might be
>      able to make better choices with it.

This would be particularly useful for boolean one-bit struct bitfield
flags (not least because assigning any positive even number to unsigned
int foo:1 will result in 0) *but* we've found gcc produces worse code
for bool:1 in our case. Details at [1].

BR,
Jani.


[1] http://patchwork.freedesktop.org/patch/msgid/1463148278-23193-1-git-send-email-jani.nikula@intel.com


-- 
Jani Nikula, Intel Open Source Technology Center
