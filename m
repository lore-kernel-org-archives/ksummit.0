Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 77B26C9A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Sep 2018 21:12:42 +0000 (UTC)
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 12B8E772
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Sep 2018 21:12:41 +0000 (UTC)
Date: Tue, 4 Sep 2018 23:12:38 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Laura Abbott <labbott@redhat.com>
In-Reply-To: <5c9c41b2-14f9-41cc-ae85-be9721f37c86@redhat.com>
Message-ID: <nycvar.YFH.7.76.1809042305140.15880@cbobk.fhfr.pm>
References: <5c9c41b2-14f9-41cc-ae85-be9721f37c86@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: Greg KH <gregkh@linuxfoundation.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] Stable trees and release
 time
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 4 Sep 2018, Laura Abbott wrote:

> I also realize Greg is probably reading this with a very skeptical look 
> on his face so I'd be interested to hear from other distro maintainers 
> as well.

As a SUSE distro kernel maintainer, I'd really like to participate if any 
such discussion is happening.

Namely:

- we're having a lot of internal discussions about how to adjust our 
  processess to the changes happening in -stable tree process and patch 
  acceptance criteria

- it's becoming more and more apparent (and even Greg stated it in the few 
  months old thread Sasha referred to) that stable tree is not really 
  intended for distros in the first place; it might be useful to have this 
  clarified a bit more.

  Namely: it's sort of evident that most of the major distros are running 
  their own variation of the stable tree. Would it be beneficial to 
  somehow close the feedback loop back from the distros to the stable 
  tree? Or is total disconnect between the two worlds inevitable and 
  desired?

Thanks,

-- 
Jiri Kosina
SUSE Labs
