Return-Path: <luis.henriques@canonical.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7F78E104E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  2 Sep 2015 10:10:48 +0000 (UTC)
Received: from youngberry.canonical.com (youngberry.canonical.com
	[91.189.89.112])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E3A0D134
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  2 Sep 2015 10:10:47 +0000 (UTC)
Date: Wed, 2 Sep 2015 11:10:38 +0100
From: Luis Henriques <luis.henriques@canonical.com>
To: Sasha Levin <sasha.levin@oracle.com>
Message-ID: <20150902101038.GA2435@ares>
References: <20150713105210.6e367f4b@noble> <55A33E48.2040202@oracle.com>
	<20150713142132.08fead4d@gandalf.local.home>
	<55A45AD8.5010400@oracle.com>
	<20150713210226.519dedfd@gandalf.local.home>
	<20150713202818.23310729@lwn.net>
	<1436871795.2445.8.camel@HansenPartnership.com>
	<874mje5y13.fsf@intel.com> <20150901205235.GA7344@kroah.com>
	<55E61200.8000706@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <55E61200.8000706@oracle.com>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Kamal Mostafa <kamal@canonical.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Issues with stable process
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

[ I'm also adding Kamal to the CC list as I'm not sure he's subscribed
  to this ML.  I don't know about the other maintainers listed in [1]. ]

On Tue, Sep 01, 2015 at 05:00:48PM -0400, Sasha Levin wrote:
> On 09/01/2015 04:52 PM, Greg KH wrote:
> >> I'm wondering if people would think it worthwhile to have a
> >> > collaborative effort of annotating commits using git notes, both
> >> > automatically and manually. The manual annotations might be things like,
> >> > "Cc: stable", "whoops, this was a bad idea for stable", or "this also
> >> > needs commit foo in stable". Of course, with more structure, but you get
> >> > the idea.
> > git notes are a pain to propagate around, so while I like the idea of
> > this, I don't know how well the proposed solution would work.
> 
> I agree, the way we work right now doesn't really help with collaboration between
> us when working on multiple stable trees.
> 
> I do have a plan in mind to create a "standard" set of scripts (rather than each
> using his own), where sharing of this metadata could be scripted in the background
> and used transparently without having to deal with notes/note conflicts/etc.
> 
> However, we all do things a bit differently, so that's one of the reasons I think
> the -stable workshow will be useful: we could figure out a common base and start
> working from there.
> 
> In the future, it would be interesting to get distro kernel maintainers into
> this mix as well...
> 

I would definitely be interested in being involved in this discussion.  We
currently maintain our set of scripts (as everyone else), but we still
follow the same stable process to maintain our kernels.

BTW, Kamal was already trying to incorporate git notes into our current
workflow in a similar way as Jani Nikula was suggesting before (and just
for reference, our workflow is documented here[2]).  The problem for
merging the notes is obviously the difficult bit ('git notes maintainers' :-)

[1] https://www.kernel.org/category/releases.html
[2] https://wiki.ubuntu.com/Kernel/Dev/ExtendedStable/Maintenance

Cheers,
--
Luís
