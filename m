Return-Path: <jack@suse.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A10689AB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 20 Jul 2016 12:11:14 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E6E82160
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 20 Jul 2016 12:11:13 +0000 (UTC)
Date: Wed, 20 Jul 2016 14:11:10 +0200
From: Jan Kara <jack@suse.cz>
To: "Eric W. Biederman" <ebiederm@xmission.com>
Message-ID: <20160720121110.GA5834@quack2.suse.cz>
References: <87inw1skws.fsf@x220.int.ebiederm.org>
	<1468962539.2383.82.camel@HansenPartnership.com>
	<87lh0xf9xv.fsf@x220.int.ebiederm.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87lh0xf9xv.fsf@x220.int.ebiederm.org>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] More useful types in the linux
 kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue 19-07-16 19:08:12, Eric W. Biederman wrote:
> James Bottomley <James.Bottomley@HansenPartnership.com> writes:
> > On Tue, 2016-07-19 at 10:32 -0500, Eric W. Biederman wrote:
> >> Historically the types in C came about because the machines
> >> fundamentally supported different data types either with different
> >> sizes or different characteristics (i.e. u8, u16, float, double).
> >> These data types and the C type system were built so programmers
> >> could tell the machine what they needed it to do.
> >> 
> >> There is another genesis of types that started with the simply typed
> >> lambda calculs that is about eliminating common errors and otherwise
> >> helping a programmer get their code right.
> >> 
> >> In the years since C was invented there has been a lot of activity
> >> and a
> >> little bit of progress in this area.  Would people be receptive to
> >> improvements in this area?
> >> 
> >> I would like to talk to folks and gague what it would take to make
> >> improvements in this area acceptable, practical, and useful.
> >> 
> >> Would a gcc plugin that checks the most interesting things that 
> >> sparse checks on every build be interesting? (endianness of integer 
> >> types for example)
> >
> > How would this be different from simply automatically running sparse in
> > the kernel build if the binary is present (effectively making make C=1
> > the default)?
> 
> Nothing.  I am just honestly looking at ways that we can get things to
> always or almost always run.   Sparse isn't getting run regularly now so
> I was suspect that would not be as good of a solution.

Isn't sparse run by 0-day testing? I thought it is...


								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
