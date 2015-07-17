Return-Path: <prvs=46404fa1f2=clm@fb.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9FE79409
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 17 Jul 2015 20:02:54 +0000 (UTC)
Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com
	[67.231.145.42])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 13EF2142
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 17 Jul 2015 20:02:54 +0000 (UTC)
Date: Fri, 17 Jul 2015 16:02:47 -0400
From: Chris Mason <clm@fb.com>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20150717200247.GD8274@ret.masoncoding.com>
References: <20150716094720.2bf9f5ac@gandalf.local.home>
	<55A7C7FE.6000604@sonymobile.com> <20150716094125.16cdda73@lwn.net>
	<1437063875.18768.59.camel@HansenPartnership.com>
	<20150717101151.5d5bc86d@lwn.net>
	<20150717133712.42c82add@gandalf.local.home>
	<22243b88-029f-4560-9e13-0b7001ed14ec@email.android.com>
	<20150717135313.6b917e1a@gandalf.local.home>
	<20150717193013.GB8274@ret.masoncoding.com>
	<20150717154633.51804e6e@gandalf.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20150717154633.51804e6e@gandalf.local.home>
Cc: James Bottomley <James.Bottomley@Hansenpartnership.com>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	Jason Cooper <jason@lakedaemon.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
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

On Fri, Jul 17, 2015 at 03:46:33PM -0400, Steven Rostedt wrote:
> On Fri, 17 Jul 2015 15:30:13 -0400
> Chris Mason <clm@fb.com> wrote:
> 
> > On Fri, Jul 17, 2015 at 01:53:13PM -0400, Steven Rostedt wrote:
> > > On Fri, 17 Jul 2015 20:43:12 +0300
> > > James Bottomley <James.Bottomley@Hansenpartnership.com> wrote:
> > > 
> > > 
> > > > >--- Some Maintainer's prefer these styles ---
> > > > >
> > > > > These are some extra styles that maintainers prefer. Some are strict
> > > > > about these, others may not care. It doesn't hurt to add them.
> > > > >
> > > 
> > > 
> > > 
> > > > 
> > > > If you do that, and I get 500 coccinelle generated patches for SCSI switching the includes to reverse Christmas tree one file at a time, I'm afraid I'll have to shoot you.
> > > 
> > > I'll remember to wear my bullet proof vest coming to KS.
> > > 
> > > Should stress that just some people prefer them. Heck, we can teach
> > > checkpatch.pl to look at what file is being modified and see what
> > > formats the maintainer of the file wants. :-)
> > 
> > We're way off in the weeds here, and whenever this topic comes up, we
> > end up focusing on the minor annoyances that come from submitting
> > new code.  Small variations in coding style, function naming and
> > general methods for working with a maintainer are sure to vary.
> > 
> > Looking at Jon's statistics, we don't have a problem bringing
> > new people into the kernel.  What can we do to help the new
> > people be more productive?  My own feeling is feedback,
> > testing and documentation are more important than
> > 100% consistency between maintainers.
> > 
> > I love Greg's swag idea, I'm sure
> > more than one LF member would
> > be willing to help sponsor
> > such a thing.
> > 
> > -chris
> 
> I wondered
> why I felt like
> I needed to look for
> my lawn mower. Yeah, we are
> bike shedding here. We need to
> figure out how to get people not
> afraid of submitting their first patch.
> I agree, that swag idea may be a good one.

The first patch really doesn't seem to be a problem.  At least from
the stats I've seen so far.  How do we get the 10..100th patches,
hopefully without 90% of them being whitespace fixes?

We're not going to be able to answer these without
actual data.  This means surveys and talking with
new developers that we really hope to turn into
long term members of the community.

-chris
