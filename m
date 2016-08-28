Return-Path: <jikos@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 896A1412
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 28 Aug 2016 20:35:28 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 30DC310A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 28 Aug 2016 20:35:28 +0000 (UTC)
Date: Sun, 28 Aug 2016 22:35:24 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Joe Perches <joe@perches.com>
In-Reply-To: <1472413969.26978.108.camel@perches.com>
Message-ID: <alpine.LNX.2.00.1608282234290.22028@cbobk.fhfr.pm>
References: <1472330452.26978.23.camel@perches.com>
	<20160828005636.GB19088@sasha-lappy>
	<20160828075632.GA1852@p183.telecom.by>
	<alpine.DEB.2.10.1608281152080.3321@hadrien>
	<1472413969.26978.108.camel@perches.com>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg KH <gregkh@linuxfoundation.org>, LKML <linux-kernel@vger.kernel.org>,
	Sasha Levin <levinsasha928@gmail.com>, git <git@vger.kernel.org>
Subject: Re: [Ksummit-discuss] checkkpatch (in)sanity ?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, 28 Aug 2016, Joe Perches wrote:

> Are there other existing tools for blame history viewing?

fugitive vim plugin has 'Gblame' command, which I personally find rather 
useful, and given the text-oriented nature could potentially be useful for 
your needs.

-- 
Jiri Kosina
SUSE Labs
