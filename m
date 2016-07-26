Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0F5D494E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 26 Jul 2016 13:37:58 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 61F03171
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 26 Jul 2016 13:37:56 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Tue, 26 Jul 2016 16:38:03 +0300
Message-ID: <6125585.ae3bRTRs05@avalon>
In-Reply-To: <1469199065.2382.21.camel@HansenPartnership.com>
References: <15842.1469185302@warthog.procyon.org.uk>
	<1469199065.2382.21.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Linux Containers <containers@lists.linux-foundation.org>,
	oleg@redhat.com, ikent@redhat.com
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Containerisation,
	namespaces and keyrings
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi James,

On Friday 22 Jul 2016 07:51:05 James Bottomley wrote:
> On Fri, 2016-07-22 at 12:01 +0100, David Howells wrote:
> > I'm not sure this is the right venue for this, but keyrings will need
> > to be namespaced/containerised at some point.
> 
> There are various unvirtualised subsystems within Linux.  There has
> been discussion on the containers mailing list about how:
> 
> http://thread.gmane.org/gmane.linux.kernel.containers/30371
> 
> So far Eric has advocated for making things like this properties of the
> user namespace; I'm more inclined to a separate namespace for
> delegates, but nothing's been decided.
> 
> Proposing on the containers list should be your first step (I've added
> the list to the cc).
> 
> > The problem is that it's an icky problem given that different key
> > types really want to live in different namespaces, and upcalls may
> > want to done in different containers, depending on the key type.
> 
> Surely if you virtualize, you'll have a namespace label per key (or
> keyring) so they'll be in one and only one namespace.
> 
> The upcall problem sounds like it might be similar to the nfsd one,
> which is nasty.  Describing it on the list would help people
> understand.
> 
> > For example, DNS resolver keys - should they be in the network, the
> > filesystem namespace or neither?  Should the upcall be in the current
> > container or the root container?
> 
> Depends what the upcall does.
> 
> > Authentication keys, such as used by kafs and AF_RXRPC - should they
> > be in the filesystem namespace (kafs is an fs), the network namespace
> > (AF_RXRPC is a net protocol) or the user namespace?
> 
> I'm sort of starting to see Eric's point now, since every namespace has
> an owning user namespace, if they were in that the question is
> naturally answered.
> 
> > Should crypto keys, such as the asymmetric key type, be in the user
> > namespace? What about use by module signing?  Should key operations
> > in the current container have access to a blacklist in the root
> > container?  Should key verification in the current container have
> > access to system keyrings?   The TPM?
> > 
> > This might actually be right for a hallway track.
> 
> Actually, I really think this isn't a KS issue, it should be proposed
> for the Plumbers Containers MC:
> 
> http://www.linuxplumbersconf.org/2016/ocw/events/LPC2016/tracks/519
> 
> You have all the correct people in that session.  At KS you'll have 50%
> bored, 48% hostile because they hate cgroups and 2% interested.

Virtualization is increasingly affecting more and more subsystems. While I 
don't disagree with you, I also see value in teaching maintainers about 
containers, namespaces and the way they affect subsystems. We should ensure 
that best practices can be followed going forward, and avoiding subsystems 
being developed in a way that will make it difficult for them to be 
virtualized later (although one might argue that we've already made a mess in 
several subsystems anyway). KS would be a good place to spread the message as 
widely as possible among maintainers, with Plumbers a good venue for more 
technical discussions.

-- 
Regards,

Laurent Pinchart
