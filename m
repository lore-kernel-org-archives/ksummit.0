Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id B617A875
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 17:58:46 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
	[217.70.183.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 464BB201A2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 17:58:46 +0000 (UTC)
Date: Tue, 6 May 2014 10:58:42 -0700
From: josh@joshtriplett.org
To: Andy Lutomirski <luto@amacapital.net>
Message-ID: <20140506175842.GF20776@cloud>
References: <CALCETrU_xrdgUNF55YU+8rfq2xK0cU3QybQhqvX4L8OgsiwG5A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALCETrU_xrdgUNF55YU+8rfq2xK0cU3QybQhqvX4L8OgsiwG5A@mail.gmail.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Reviewing new API/ABI
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, May 06, 2014 at 10:45:05AM -0700, Andy Lutomirski wrote:
> There doesn't currently seem to be any real process for reviewing new
> core APIs for sanity of design, appropriateness to solve the problem
> they're targetting, or correctness of implementation.
[...]
> I think that the process could be improved.  I think that there are
> people who are willing to spend time to read API docs and thinking
> about these kinds of issues.  (I am, and Michael Kerrisk seems to do a
> fair amount of it.)
> 
> I would like to discuss what we could change to make this work better
> in the future.  In an ideal world, I would like to see every core API
> change come with documentation, tests (possibly simple ones), and a
> post, with acks, to a list that covers just API changes.  This might
> be tough, but it could add a lot of value.
> 
> I've occasionally thought that API docs should live in the kernel tree
> in some reasonably well organized place so that patch sets can include
> doc patches.  I realize that this is contentious.
> 
> I'm sure that other people have other suggestions here.
> 
> --Andy
> 
> P.S.  I'm not on the invitation nominee list, so if people like this
> topic, I'd appreciate a nomination :)

I'm interested in this topic, and I'll second that nomination.  I'd
like to partipate in this discussion.

We need to have better processes for vetting new syscalls and ABIs far
more carefully than we currently do.  Right now, we require benchmarks
for any claimed performance increase; it's almost a given that if you
post an optimization without including benchmarks in the commit message,
it'll get rejected with a request to come back with numbers.  We need
similar standards for new syscalls or other userspace ABIs: come back
with test programs, test coverage information, etc.

- Josh Triplett
