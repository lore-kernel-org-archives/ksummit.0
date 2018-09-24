Return-Path: <mgorman@techsingularity.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 34A61FCC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Sep 2018 14:02:29 +0000 (UTC)
Received: from outbound-smtp10.blacknight.com (outbound-smtp10.blacknight.com
	[46.22.139.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 825F077C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Sep 2018 14:02:28 +0000 (UTC)
Received: from mail.blacknight.com (pemlinmail05.blacknight.ie [81.17.254.26])
	by outbound-smtp10.blacknight.com (Postfix) with ESMTPS id
	A10AE1C2F28 for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Sep 2018 14:53:13 +0100 (IST)
Date: Mon, 24 Sep 2018 14:53:11 +0100
From: Mel Gorman <mgorman@techsingularity.net>
To: David Woodhouse <dwmw2@infradead.org>
Message-ID: <20180924135311.GM1719@techsingularity.net>
References: <1537356482.4640.7.camel@HansenPartnership.com>
	<20180919083749.49268562@coco.lan>
	<20180919090332.723c1b75@coco.lan>
	<1537366581.6816.1.camel@HansenPartnership.com>
	<20180919165552.0f30bbef@coco.lan>
	<CAPM=9tyrsJx5oaY-umNAmNDGUAFQWQ-dmh=FdsOUEQynr_yqjg@mail.gmail.com>
	<20180919210122.694bf4a3@coco.lan>
	<ECADFF3FD767C149AD96A924E7EA6EAF7C1EB915@USCULXMSG01.am.sony.com>
	<875zz0y8ym.fsf@intel.com>
	<a5d0c23c244027dc8f27136df98f28bac1058173.camel@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
In-Reply-To: <a5d0c23c244027dc8f27136df98f28bac1058173.camel@infradead.org>
Cc: ksummit-discuss@lists.linuxfoundation.org, Tim.Bird@sony.com,
	James.Bottomley@hansenpartnership.com, mchehab+samsung@kernel.org
Subject: Re: [Ksummit-discuss] [MAINTAINER TOPIC FOR KS] CoC and Linus
 position (perhaps undocumented/closed/limited/invite session)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Sep 20, 2018 at 08:04:39AM +0100, David Woodhouse wrote:
> On Thu, 2018-09-20 at 09:33 +0300, Jani Nikula wrote:
> > Agreed.
> > 
> > I think there's much more value in adopting a widely used code of
> > conduct than writing your own, or even trying to tweak it. If a project
> > uses the Contributor Covenant, you pretty much know the rules without
> > actually having to read another document and wonder what this all means.
> > In this regard, it's really not unlike the GPL for copyleft licenses;
> > one acronym tells you what you can and can't do.
> > 
> > With that perspective, I think the changes proposed in this thread do
> > more harm than good. If people still insist the text should be improved,
> > I think the proper flow is to file issues or pull requests to
> > Contributor Covenant upstream [1], and later update to a new version of
> > the document.
> 
> I'll note that isn't what Linus did with the GPL.
> 
> But perhaps there's a possible solution: Instead of editing the text of
> the covenant, just preface it with a statement that email addresses
> used on mailing lists are not considered to be private and that it is
> acceptable (and indeed recommended) to credit individuals who have
> contributed to reporting and testing by using their email addresses.

It's not just email addresses We generally require people to use their
real name and not pseudonyms for patches and their Signed-off-by.

-- 
Mel Gorman
SUSE Labs
