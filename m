Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A38485AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 20 Oct 2017 15:27:46 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3B9E5483
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 20 Oct 2017 15:27:46 +0000 (UTC)
Message-ID: <1508513264.3064.8.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Shuah Khan <shuahkh@osg.samsung.com>, Theodore Ts'o <tytso@mit.edu>,
	ksummit-discuss@lists.linuxfoundation.org
Date: Fri, 20 Oct 2017 08:27:44 -0700
In-Reply-To: <0c7dea93-caee-b91c-3932-a084066e257a@osg.samsung.com>
References: <20171013001534.x35ipyu5fg3pdbaa@thunk.org>
	<20171020021929.y6huqssdny543gyz@thunk.org>
	<0c7dea93-caee-b91c-3932-a084066e257a@osg.samsung.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [Ksummit-discuss] Draft Agenda for the Kernel Summit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 2017-10-20 at 08:31 -0600, Shuah Khan wrote:
> On 10/19/2017 08:19 PM, Theodore Ts'o wrote:
> > 
> > On Thu, Oct 12, 2017 at 08:15:34PM -0400, Theodore Ts'o wrote:
> > > 
> > > 
> > > Wednesday
> > > =========
> > > 
> > > 11:55 Kselftest use-cases (Shuah Khan)
> > 
> > I'm finalizing the schedule for the kernel summit, and I wanted to
> > check in with you about whether (a) you think this topic is still a
> > useful one for us to have, and (b) whether you will be available /
> > the
> > best person to lead the topic.
> > 
> 
> Hi Ted,
> 
> Sorry - I have been traveling didn't get back to you earlier.
> I haven't seen much response to my original posting, so I am
> not very sure how useful people think this would be as a topic.
> 
> If you need to drop this in favor of another topic, it would be
> fine.

Actually, it would be really useful to do an overview for people who
run git trees of what resources are available to us for easy tree
testing.  Most people are aware of linux-next and 0day, but fewer
understand how to customise the tests of the latter and get email
failure reports on specific branches.  I suspect even fewer know how to
run their own CI based on something like kselftests or xfstests.

James
