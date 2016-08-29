Return-Path: <BATV+84964a6430df53dd3967+4754+infradead.org+hch@bombadil.srs.infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E8DFB89F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 08:20:19 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8E67DE2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Aug 2016 08:20:19 +0000 (UTC)
Date: Mon, 29 Aug 2016 01:20:15 -0700
From: Christoph Hellwig <hch@infradead.org>
To: "Levin, Alexander" <alexander.levin@verizon.com>
Message-ID: <20160829082015.GA16643@infradead.org>
References: <1472330452.26978.23.camel@perches.com>
	<20160828005636.GB19088@sasha-lappy>
	<1472348579.26978.47.camel@perches.com>
	<20160828023807.GC19088@sasha-lappy>
	<1472404557.26978.84.camel@perches.com>
	<20160828223759.GA12993@sasha-lappy>
	<1472426452.26978.151.camel@perches.com>
	<20160829021055.GA24216@sasha-lappy>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160829021055.GA24216@sasha-lappy>
Cc: Joe Perches <joe@perches.com>, Greg KH <gregkh@linuxfoundation.org>,
	Sasha Levin <levinsasha928@gmail.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
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

Seriously folks, checkpatch is a tool that's to be used for a reason,
not a reason by itself.

And it used to be a lot more useful before adding all kinds of bullshit
warnings.  I use checkpatch a lot, and I also ignore silly warnings in
it a lot as it's piling up more and more crap.

And then again there are just plenty of commits that touch existing code
for a minor change, and I'm not going to bother rewriting the steaming
pile of crap around it.  And checkpath really shouldn't even bother to
warn for context of diffs that's not even touched by default.
