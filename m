Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4909A2A56
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 16 Oct 2018 18:19:25 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F2E6DFD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 16 Oct 2018 18:19:24 +0000 (UTC)
Message-ID: <1539713962.2805.41.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Josh Triplett <josh@joshtriplett.org>
Date: Tue, 16 Oct 2018 11:19:22 -0700
In-Reply-To: <20181016180010.GC4367@localhost>
References: <20181016021254.GA21220@thunk.org>
	<CAKMK7uHxdmJVAtUDWG-=0-qw9RxaW4bONscmbH4PjDZrgYnBqw@mail.gmail.com>
	<1539702797.2805.19.camel@HansenPartnership.com>
	<20181016180010.GC4367@localhost>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Draft Maintainer's Summit Agenda and Attendees
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 2018-10-16 at 11:00 -0700, Josh Triplett wrote:
> On Tue, Oct 16, 2018 at 08:13:17AM -0700, James Bottomley wrote:
> > On Tue, 2018-10-16 at 10:11 +0200, Daniel Vetter wrote:
> > >  And I don't see anyone else from an external community with real
> > > experience (or someone who does consulting in this area) invited
> > > to fill that gap either.
> > 
> > I don't buy the narrative that you must be a CoC consultant or
> > implementor to make a difference.
> 
> We typically don't make major changes in a specialized domain without
> consulting domain experts, to avoid building a solution that won't
> work or ignores well-known issues in that domain. We wouldn't go off
> and build a virtualization subsystem without consulting
> virtualization experts; we wouldn't build a storage subsystem without
> consulting storage experts; we wouldn't hack on a license without
> consulting legal experts; the same applies here.

I notice you carefully cut the part about people who've been active in
helping the kernel in this regard already being present; so we do have
some domain experts ... plus no external ones have actually been
proposed at this point. 

We also don't usually listen deferentially to domain experts ...
spectre and meltdown would be a case in point here.

James
