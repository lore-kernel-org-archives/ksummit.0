Return-Path: <joe@perches.com>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 538F29D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 23:12:49 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0045.hostedemail.com
	[216.40.44.45])
	by smtp2.linuxfoundation.org (Postfix) with ESMTPS id A9BD71DCA0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 23:12:48 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave07.hostedemail.com (Postfix) with ESMTP id 193C311A803
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 19:34:17 +0000 (UTC)
Message-ID: <1472499252.3425.93.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Dan Carpenter <dan.carpenter@oracle.com>, Josh Triplett
	<josh@joshtriplett.org>
Date: Mon, 29 Aug 2016 12:34:12 -0700
In-Reply-To: <20160829191701.GL4129@mwanda>
References: <1472330452.26978.23.camel@perches.com>
	<20160829190618.GF4180@mwanda> <20160829191020.GB27600@cloud>
	<20160829191701.GL4129@mwanda>
Content-Type: text/plain; charset="ISO-8859-1"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Greg KH <gregkh@linuxfoundation.org>, Sasha Levin <levinsasha928@gmail.com>,
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

On Mon, 2016-08-29 at 22:17 +0300, Dan Carpenter wrote:
> On Mon, Aug 29, 2016 at 12:10:20PM -0700, Josh Triplett wrote:
> > On Mon, Aug 29, 2016 at 10:06:18PM +0300, Dan Carpenter wrote:
> > > I would like a couple changes which you know already:
> > > 
> > > 1) Get rid of PREFER_ETHER_ADDR_COPY and similar because the people who
> > > send checkpatch.pl fixes aren't qualified to say when it's legal or not
> > > so they sometimes introduce bugs.
> > I do think we should have *something* that catches such things.
> > Perhaps not checkpatch.pl, though.  Perhaps a compiler plugin that
> > generates additional warnings, and can perhaps use more global
> > information to determine legality?
> Perhaps.  But that shouldn't delay us from deleting this code which just
> encourages newbies to introduce bugs.

You could send a patch.

I still kinda like the --force option

https://patchwork.kernel.org/patch/5814071/
