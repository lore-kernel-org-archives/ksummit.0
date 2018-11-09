Return-Path: <jason@lakedaemon.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3EEF0B44
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 Nov 2018 20:17:19 +0000 (UTC)
Received: from outbound1.eu.mailhop.org (outbound1.eu.mailhop.org
	[52.28.251.132])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 56A89857
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 Nov 2018 20:17:18 +0000 (UTC)
Date: Fri, 9 Nov 2018 20:17:00 +0000
From: Jason Cooper <jason@lakedaemon.net>
To: "Theodore Y. Ts'o" <tytso@mit.edu>,
	Konstantin Ryabitsev <mricon@kernel.org>
Message-ID: <20181109201700.GB9256@io.lakedaemon.net>
References: <1541721842.3774.2.camel@HansenPartnership.com>
	<35402D8E-0294-4E34-BE8B-22BCBC20BF66@fb.com>
	<41b03a5b-1af4-0a87-2736-016f79d4d1ca@kernel.org>
	<20181109190305.GD21078@thunk.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181109190305.GD21078@thunk.org>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Tech Board Discuss <Tech-board-discuss@lists.linux-foundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: [Ksummit-discuss] better hot-topic discussion processes was: Re:
	TAB non-nomination
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

+Kostantin

Hi Ted,

On Fri, Nov 09, 2018 at 02:03:05PM -0500, Theodore Y. Ts'o wrote:
> So what was done with the update to the CoC was that a proposed set of
> changes was sent out to the top 200 or so contributors to the kernel,
> by git statistics over the past year, asking for their comments and
> their sign-offs.  So there *was* community input, and that input did
> result in changes to the CoC update.
> 
> Could there be a better process?  I think we're all open to input.  If
> someone would like to suggest a better way to handle things, that
> would be great.  I will disclose upfront, though, that I will have to
> politely disagree with the proposition that completely free and open
> discussion is always the magic bullet solution.

Ok, I'll take a stab at that. :)

I'll make the assumption that there was nothing said in the "invited"
discussion that the speaker would object to being a matter of public
record.

So I see two possible avenues to improve the process.  Keeping in mind
that these are rare, and thus the process shouldn't be a burden.

The first is what I'll call a "delayed archive."  Basically, you Cc the
archive in along with the invitees to the discussion.  The archive
server then adds the emails to the public archive 90 days after the
email was sent.  This might also work well for the security ML.

The second is more of a "distributed moderation" model.  A mailinglist
would be added to the Cc where only members can post.  Non-member posts
are dropped.  However, there are also "subscribers"; they can't post,
but they receive posts to the ML.[1]  There is no delay.

So, if I'm just a subscriber, but I know James, and I want to contribute
to the discussion, I send my reply to him, and he can forward it if
relevant.[2]  James can filter any emails coming in against his address
book so he's not bothered with people he doesn't know (Don't we all
already do this? :-) ).  The same goes for all the other members.  The
idea here is avoid the single-point-of-failure of having a single
moderator.  Optionally, the "members" could be automatically assigned
that status based on the git history.

thx,

Jason.

[1] Another way to describe this is an ML for which posting is limited
to subscribers that meet a given threshold within the git history.

[2] programmatically, we could say that James' address is in the To: and
all others in the Cc:.  This would allow for easier spotting of "I'm
being asked to moderate this."
