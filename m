Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D272229EF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 16 Oct 2018 18:00:26 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
	[217.70.183.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 33CD2FD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 16 Oct 2018 18:00:25 +0000 (UTC)
Date: Tue, 16 Oct 2018 11:00:10 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20181016180010.GC4367@localhost>
References: <20181016021254.GA21220@thunk.org>
	<CAKMK7uHxdmJVAtUDWG-=0-qw9RxaW4bONscmbH4PjDZrgYnBqw@mail.gmail.com>
	<1539702797.2805.19.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1539702797.2805.19.camel@HansenPartnership.com>
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

On Tue, Oct 16, 2018 at 08:13:17AM -0700, James Bottomley wrote:
> On Tue, 2018-10-16 at 10:11 +0200, Daniel Vetter wrote:
> >  And I don't see anyone else from an external community with real
> > experience (or someone who does consulting in this area) invited to
> > fill that gap either.
> 
> I don't buy the narrative that you must be a CoC consultant or
> implementor to make a difference.

We typically don't make major changes in a specialized domain without
consulting domain experts, to avoid building a solution that won't work
or ignores well-known issues in that domain. We wouldn't go off and
build a virtualization subsystem without consulting virtualization
experts; we wouldn't build a storage subsystem without consulting
storage experts; we wouldn't hack on a license without consulting legal
experts; the same applies here.
