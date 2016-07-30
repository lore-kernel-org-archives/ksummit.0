Return-Path: <ebiederm@xmission.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8B48271
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 30 Jul 2016 18:03:26 +0000 (UTC)
Received: from out01.mta.xmission.com (out01.mta.xmission.com [166.70.13.231])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2FD17204
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 30 Jul 2016 18:03:26 +0000 (UTC)
From: ebiederm@xmission.com (Eric W. Biederman)
To: David Howells <dhowells@redhat.com>
References: <15842.1469185302@warthog.procyon.org.uk>
Date: Sat, 30 Jul 2016 12:50:19 -0500
In-Reply-To: <15842.1469185302@warthog.procyon.org.uk> (David Howells's
	message of "Fri, 22 Jul 2016 12:01:42 +0100")
Message-ID: <87y44j582s.fsf@x220.int.ebiederm.org>
MIME-Version: 1.0
Content-Type: text/plain
Cc: ikent@redhat.com, James Bottomley <James.Bottomley@HansenPartnership.com>,
	oleg@redhat.com, ksummit-discuss@lists.linuxfoundation.org
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

David Howells <dhowells@redhat.com> writes:

> I'm not sure this is the right venue for this, but keyrings will need to be
> namespaced/containerised at some point.
>
> The problem is that it's an icky problem given that different key types really
> want to live in different namespaces, and upcalls may want to done in
> different containers, depending on the key type.

I definitely think there are some techinical details going over with a
fine tooth comb.  Ordinary keys and keyrings that are used for purposes
such as authorization to use files on nfs I long ago put in the user
namespace.   Because they largely serve the same purpose as uids,
and the user namespace is where we have identifiers for security things
stashed away.

My analysis at the time suggested that there were not identifiers that
needed to be preserved over checkpoint/restart (and I was lazy) so the
user namespace only filters these identifiers.

Upcalls and the caching of the results of upcalls are definitely a
problem.  Several years when I was looking at things I found the upcall
code unusable because I could not invalidate cached results.  And of
course we have the long running question of how do we make upcalls
work from a container.

> For example, DNS resolver keys - should they be in the network, the filesystem
> namespace or neither?  Should the upcall be in the current container or the
> root container?
>
> Authentication keys, such as used by kafs and AF_RXRPC - should they be in the
> filesystem namespace (kafs is an fs), the network namespace (AF_RXRPC is a net
> protocol) or the user namespace?
>
> Should crypto keys, such as the asymmetric key type, be in the user namespace?
> What about use by module signing?  Should key operations in the current
> container have access to a blacklist in the root container?  Should key
> verification in the current container have access to system keyrings?  The
> TPM?
>
> This might actually be right for a hallway track.

Hallway track/hackathon.  The solutions to the practical problems will
only come of the right people sitting down with the code and looking at
the issues.  Most of the problems I am aware of are not so much
placement in a namespace but rather technical plumbing issues necessary
to make the things people should work actually work.

Eric
