Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 83F56CBC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Oct 2018 15:17:18 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 30B8B6FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Oct 2018 15:17:18 +0000 (UTC)
Message-ID: <1538752634.4380.3.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Jani Nikula <jani.nikula@intel.com>, Laurent Pinchart
	<laurent.pinchart@ideasonboard.com>,
	ksummit-discuss@lists.linuxfoundation.org
Date: Fri, 05 Oct 2018 08:17:14 -0700
In-Reply-To: <875zygpn10.fsf@intel.com>
References: <CAKON4OxHUoVQ3zso=avoGE35MwWnkGaU13R_qPaw9zAqMVCDxQ@mail.gmail.com>
	<20181005075048.GA24138@localhost> <87efd4px5a.fsf@intel.com>
	<2795844.PlkHHhbf7z@avalon> <875zygpn10.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Re: [Ksummit-discuss] New CoC and Brendan Eich
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 2018-10-05 at 15:59 +0300, Jani Nikula wrote:
> On Fri, 05 Oct 2018, Laurent Pinchart <laurent.pinchart@ideasonboard.
> com> wrote:
> > There are valid reasons for software to fork, I don't see why there
> > could be valid reasons for codes of conduct to fork.
> 
> Perhaps you're missing a "not" in there?
> 
> Some of the valid reasons to *not* fork codes of conduct are similar
> to why you shouldn't roll your own licenses. First, people don't want
> to keep reading and interpreting different texts for different
> projects, wondering what this means for them. Just read the familiar
> label and you know what's in the box. Second, as a community you can
> share the experiences and best practices with other projects using
> the same text.
> 
> I'm not saying we should stick to Contributor Covenant at all cost,
> I'm saying pick a suitable tried and tested code of conduct, and
> stick with it.

As I said on another thread: Zephyr jut adopted the contributor
covenant but stripped all the enforcement clauses:

https://github.com/zephyrproject-rtos/zephyr/pull/10356

So I think we could modify it to suit our own community as well.

I don't think when it comes to CoCs one size fits all so I can see us
making local patches that aren't upstream because upstream seems to be
concentrating more on the github than mailing list communities.

James
