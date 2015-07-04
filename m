Return-Path: <BATV+4877484c58564cff13b7+4332+infradead.org+dwmw2@bombadil.srs.infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D9E48B5A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  4 Jul 2015 16:49:07 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 94A8A1F2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  4 Jul 2015 16:49:07 +0000 (UTC)
Message-ID: <1436028544.3324.41.camel@infradead.org>
From: David Woodhouse <dwmw2@infradead.org>
To: David Howells <dhowells@redhat.com>
Date: Sat, 04 Jul 2015 17:49:04 +0100
In-Reply-To: <15786.1436005103@warthog.procyon.org.uk>
References: <1435997161.3324.33.camel@infradead.org>
	<15786.1436005103@warthog.procyon.org.uk>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
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

On Sat, 2015-07-04 at 11:18 +0100, David Howells wrote:
> Related to this is the issue of creeping GPL-only-isation of important
> exported symbols. 

Perhaps, yes.

> This affects not only closed-source stuff, but also non-GPL
> licensed open-source projects such as OpenAFS that can't relicense 
> their code under the GPL.

Haven't you finished obsoleting the kernel parts of OpenAFS yet? :)

-- 
dwmw2
