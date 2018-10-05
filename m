Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0B53C16A0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Oct 2018 18:28:38 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
	[217.70.183.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4A7B0108
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Oct 2018 18:28:36 +0000 (UTC)
Date: Fri, 5 Oct 2018 11:28:27 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20181005182826.GA3981@localhost>
References: <CAKON4OxHUoVQ3zso=avoGE35MwWnkGaU13R_qPaw9zAqMVCDxQ@mail.gmail.com>
	<20181005075048.GA24138@localhost> <87efd4px5a.fsf@intel.com>
	<2795844.PlkHHhbf7z@avalon> <875zygpn10.fsf@intel.com>
	<1538752634.4380.3.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1538752634.4380.3.camel@HansenPartnership.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] New CoC and Brendan Eich
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Oct 05, 2018 at 08:17:14AM -0700, James Bottomley wrote:
> On Fri, 2018-10-05 at 15:59 +0300, Jani Nikula wrote:
> > On Fri, 05 Oct 2018, Laurent Pinchart <laurent.pinchart@ideasonboard.
> > com> wrote:
> > > There are valid reasons for software to fork, I don't see why there
> > > could be valid reasons for codes of conduct to fork.
> > 
> > Perhaps you're missing a "not" in there?
> > 
> > Some of the valid reasons to *not* fork codes of conduct are similar
> > to why you shouldn't roll your own licenses. First, people don't want
> > to keep reading and interpreting different texts for different
> > projects, wondering what this means for them. Just read the familiar
> > label and you know what's in the box. Second, as a community you can
> > share the experiences and best practices with other projects using
> > the same text.
> > 
> > I'm not saying we should stick to Contributor Covenant at all cost,
> > I'm saying pick a suitable tried and tested code of conduct, and
> > stick with it.
> 
> As I said on another thread: Zephyr jut adopted the contributor
> covenant but stripped all the enforcement clauses:
> 
> https://github.com/zephyrproject-rtos/zephyr/pull/10356

No, they didn't. Someone proposed it, it has not been merged.

> I don't think when it comes to CoCs one size fits all so I can see us
> making local patches that aren't upstream because upstream seems to be
> concentrating more on the github than mailing list communities.

I strongly suspect that upstream would welcome patches that clarify how
it applies to mailing-list-based communities.
