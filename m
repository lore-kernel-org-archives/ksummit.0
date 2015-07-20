Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7F2C6405
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 20 Jul 2015 05:16:15 +0000 (UTC)
Received: from mrelay2-d.mail.gandi.net (relay2-d.mail.gandi.net
	[217.70.183.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0BAA5147
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 20 Jul 2015 05:16:15 +0000 (UTC)
Date: Sun, 19 Jul 2015 22:16:06 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: Zefan Li <lizefan@huawei.com>
Message-ID: <20150720051605.GA10779@x>
References: <20150717101151.5d5bc86d@lwn.net>
	<20150717133712.42c82add@gandalf.local.home>
	<20150717190223.GB1499@cloud>
	<20150717154326.6f129bc4@gandalf.local.home>
	<20150717202412.GA1856@cloud>
	<20150717163903.67747d86@gandalf.local.home>
	<20150717204856.GA2048@cloud>
	<20150717165501.62ed4e04@gandalf.local.home>
	<alpine.LNX.2.00.1507200014320.1141@pobox.suse.cz>
	<55AC5E3B.9040102@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <55AC5E3B.9040102@huawei.com>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Jul 20, 2015 at 10:34:35AM +0800, Zefan Li wrote:
> > I.e. I might propose a a slightly controversial topic, going a bit the 
> > other direction than the whole "motivating newcomers" discussion: how to 
> > get rid of useless submissions that are slowing maintainers down?
> > 
> 
> Do we really have this issue?
> 
> If we are encouraging more people to get involved in kernel contribution, we'll
> sure occasionally see some patches with little value, but I don't think we are
> suffering from this.
> 
> And When we see a patch of this kind, it won't take us much time to tell the
> newbie why the patch isn't appropriate, and then he probably won't do this again.

That's exactly the kind of thing that we *shouldn't* do.

Think about that from the new contributor's perspective.  They've made a
change to the kernel that has a small but non-zero value.  They've just
managed to work out how to jump through all the hoops needed to prepare
and submit it properly for the kernel, through some combination of
reading, lurking, and mentorship.  And the first response they see is a
maintainer like you saying "please don't send this kind of patch".

Yeah, they probably won't do that again.  Congratulations, you defeated
the newbie and thwarted their evil maintainer-time-wasting scheme!  Hail
the conquering hero; insert victory fanfare here.  If you and others
keep up that vigilance, perhaps one day all maintainers can rest easy,
knowing they'll never again have to deal with new contributors.

</sarcasm>

It's perfectly reasonable to tell someone that, since they've gotten the
hang of sending kernel patches, they should move on to more substantial
changes, and leave simpler fixes to other potential new contributors.
But that's different than telling them their patch is unwelcome.

(If someone sends in a patch that's actively wrong, sure, go right ahead
and tell them what's wrong with it.  But there's a difference between
"wrong" and just "not that important".)

- Josh Triplett
