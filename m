Return-Path: <linux+ksummit-discuss=lists.linuxfoundation.org@arm.linux.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 07F7840D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  2 Aug 2015 14:05:36 +0000 (UTC)
Received: from pandora.arm.linux.org.uk (pandora.arm.linux.org.uk
	[78.32.30.218])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 35637A9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  2 Aug 2015 14:05:31 +0000 (UTC)
Date: Sun, 2 Aug 2015 15:05:08 +0100
From: Russell King - ARM Linux <linux@arm.linux.org.uk>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Message-ID: <20150802140508.GE7557@n2100.arm.linux.org.uk>
References: <alpine.DEB.2.10.1507311833280.2499@hadrien>
	<20150731165346.GA18984@infradead.org>
	<1438362159.2179.42.camel@HansenPartnership.com>
	<20150731170523.GF5613@dtor-ws>
	<1438362797.2179.45.camel@HansenPartnership.com>
	<20150731173335.GI5613@dtor-ws>
	<1438364188.2179.53.camel@HansenPartnership.com>
	<20150731182815.GK5613@dtor-ws>
	<1438368039.2179.62.camel@HansenPartnership.com>
	<20150731194124.GL5613@dtor-ws>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150731194124.GL5613@dtor-ws>
Sender: Russell King - ARM Linux <linux@arm.linux.org.uk>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Christoph Hellwig <hch@infradead.org>, Tejun Heo <tj@kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org,
	Shuah Khan <shuah.kh@samsung.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Fix devm_kzalloc, its users,
 or both
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jul 31, 2015 at 12:41:24PM -0700, Dmitry Torokhov wrote:
> On Fri, Jul 31, 2015 at 11:40:39AM -0700, James Bottomley wrote:
> > Russell says, this looks to be an orthogonal problem to devm_kzalloc.
> 
> Yes, it is except that devm_* is magical and people expect it to somehow
> release resources only at the right time.

Who's been selling it as such?  If it's been mis-sold, then maybe there's
a responsibility on people who see such mis-selling of the API to correct
those creating this fantasy, rather than ignoring it.

People try to create APIs which ease the burden of review, and then other
people go around selling it as the worlds cure to hunger.  If no one
bothers to correct those doing the mis-selling, then that's not the fault
of the API.  That's a community problem.  Don't blame the API.

-- 
FTTC broadband for 0.8mile line: currently at 10.5Mbps down 400kbps up
according to speedtest.net.
