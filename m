Return-Path: <PeterHuewe@gmx.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EB135BB6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 19:26:49 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5BC407C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 19:26:49 +0000 (UTC)
From: Peter =?iso-8859-15?q?H=FCwe?= <PeterHuewe@gmx.de>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Mon, 13 Jul 2015 21:28:21 +0200
References: <201507130038.01474.PeterHuewe@gmx.de>
	<20150713123750.52d8a14d@gandalf.local.home>
	<1436806006.20909.59.camel@infradead.org>
In-Reply-To: <1436806006.20909.59.camel@infradead.org>
MIME-Version: 1.0
Content-Type: Text/Plain;
  charset="iso-8859-15"
Content-Transfer-Encoding: 7bit
Message-Id: <201507132128.22178.PeterHuewe@gmx.de>
Cc: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE-TOPIC] Documentation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Am Montag, 13. Juli 2015, 18:46:46 schrieb David Woodhouse: 
>  1. It should have been made simpler, or
>  2. There should be an explanation *right* there in the C file.
> 
> Those should be caught in review.

But also we have tons of undocumented obscure legacy code which unfortunately 
won't get new review cycles.

Peter
