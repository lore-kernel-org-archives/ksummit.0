Return-Path: <PeterHuewe@gmx.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id E8E24AFA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 15:50:05 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 432BF1FB50
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 15:50:05 +0000 (UTC)
MIME-Version: 1.0
Message-ID: <trinity-66028479-dfde-4cf7-8530-4cbe587ae018-1400082294215@3capp-gmx-bs51>
From: "Peter Huewe" <PeterHuewe@gmx.de>
To: "Wolfram Sang" <wsa@the-dreams.de>
Content-Type: text/plain; charset=UTF-8
Date: Wed, 14 May 2014 17:44:54 +0200
In-Reply-To: <20140514152224.GA12911@katana>
References: <20140509170709.GA9747@redhat.com>
	<20140511111034.GA6400@katana> <53706EAB.7010601@monstr.eu>
	<20140512093235.GA2872@katana>
	<1400074363.4759.8.camel@jlt4.sipsolutions.net>
	<537374D0.8020307@roeck-us.net>, <20140514152224.GA12911@katana>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] coverity, static checking etc.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

> Ditto. I personally use 'C=1 CHECK="ninja-check"' which is a wrapper
> which calls all static analyzers I know of.

+1 on ninja-check

Care to share your wrapper?

Peter
