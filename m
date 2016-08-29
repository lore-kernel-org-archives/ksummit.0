Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CBBEE995
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 19:10:26 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
	[217.70.183.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A5E0923A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 19:10:25 +0000 (UTC)
Date: Mon, 29 Aug 2016 12:10:20 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Message-ID: <20160829191020.GB27600@cloud>
References: <1472330452.26978.23.camel@perches.com>
	<20160829190618.GF4180@mwanda>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160829190618.GF4180@mwanda>
Cc: Joe Perches <joe@perches.com>, Greg KH <gregkh@linuxfoundation.org>,
	Sasha Levin <levinsasha928@gmail.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] checkkpatch (in)sanity ?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Aug 29, 2016 at 10:06:18PM +0300, Dan Carpenter wrote:
> I would like a couple changes which you know already:
> 
> 1) Get rid of PREFER_ETHER_ADDR_COPY and similar because the people who
> send checkpatch.pl fixes aren't qualified to say when it's legal or not
> so they sometimes introduce bugs.

I do think we should have *something* that catches such things.
Perhaps not checkpatch.pl, though.  Perhaps a compiler plugin that
generates additional warnings, and can perhaps use more global
information to determine legality?
