Return-Path: <dan.carpenter@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 935619D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 19:17:17 +0000 (UTC)
Received: from aserp1040.oracle.com (aserp1040.oracle.com [141.146.126.69])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6E67310F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 19:17:16 +0000 (UTC)
Date: Mon, 29 Aug 2016 22:17:01 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Josh Triplett <josh@joshtriplett.org>
Message-ID: <20160829191701.GL4129@mwanda>
References: <1472330452.26978.23.camel@perches.com>
	<20160829190618.GF4180@mwanda> <20160829191020.GB27600@cloud>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160829191020.GB27600@cloud>
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

On Mon, Aug 29, 2016 at 12:10:20PM -0700, Josh Triplett wrote:
> On Mon, Aug 29, 2016 at 10:06:18PM +0300, Dan Carpenter wrote:
> > I would like a couple changes which you know already:
> > 
> > 1) Get rid of PREFER_ETHER_ADDR_COPY and similar because the people who
> > send checkpatch.pl fixes aren't qualified to say when it's legal or not
> > so they sometimes introduce bugs.
> 
> I do think we should have *something* that catches such things.
> Perhaps not checkpatch.pl, though.  Perhaps a compiler plugin that
> generates additional warnings, and can perhaps use more global
> information to determine legality?

Perhaps.  But that shouldn't delay us from deleting this code which just
encourages newbies to introduce bugs.

regards,
dan carpenter
