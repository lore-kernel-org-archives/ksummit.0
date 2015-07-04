Return-Path: <dhowells@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C024BB5A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  4 Jul 2015 10:18:28 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6EB337C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  4 Jul 2015 10:18:28 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
In-Reply-To: <1435997161.3324.33.camel@infradead.org>
References: <1435997161.3324.33.camel@infradead.org>
To: David Woodhouse <dwmw2@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <15785.1436005103.1@warthog.procyon.org.uk>
Date: Sat, 04 Jul 2015 11:18:23 +0100
Message-ID: <15786.1436005103@warthog.procyon.org.uk>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] GPL enforcement actions
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Related to this is the issue of creeping GPL-only-isation of important
exported symbols.  This affects not only closed-source stuff, but also non-GPL
licensed open-source projects such as OpenAFS that can't relicense their code
under the GPL.

David
