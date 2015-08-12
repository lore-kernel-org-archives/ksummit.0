Return-Path: <stephen@networkplumber.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 43FA58D7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 18:46:30 +0000 (UTC)
Received: from mail-pa0-f41.google.com (mail-pa0-f41.google.com
	[209.85.220.41])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CA8CB19E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 18:46:29 +0000 (UTC)
Received: by pawu10 with SMTP id u10so20020948paw.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Aug 2015 11:46:29 -0700 (PDT)
Date: Wed, 12 Aug 2015 11:46:40 -0700
From: Stephen Hemminger <stephen@networkplumber.org>
To: Christoph Hellwig <hch@infradead.org>
Message-ID: <20150812114640.3329464d@urahara>
In-Reply-To: <20150812182103.GA20106@infradead.org>
References: <20150812111552.0f7e5fe7@urahara>
	<20150812182103.GA20106@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] userspace infrastructure services
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 12 Aug 2015 11:21:03 -0700
Christoph Hellwig <hch@infradead.org> wrote:

> On Wed, Aug 12, 2015 at 11:15:52AM -0700, Stephen Hemminger wrote:
> > I expected someone else to bring this topic up...
> > 
> > One thing that is happening is that there is lots of activity in moving core features
> > of the kernel into userspace (networking, storage, security). I don't want to get into
> > an argument over whether that is good or bad;
> 
> Which I think is the most important question of them all.  From all
> the pain caused and the little gains I'm a believer it's mostly bad,
> especially for cases like:
> 
> > The area I am most familiar with is the DPDK which has to have its own UIO drivers
> > to work in all environments (get device into userspace). And then has to have its
> > own drivers to simulate network device (put device back into kernel).  This leads
> > to unmanageable ABI and development technical debt.
> 
> Which interacts on both sides.  In that case "let them suffer for their
> stupidity" is the only valid answer.
> 
> For a case where it's more reasonable there might be a different answer.

I think this is like earlier work with embedded. If the community does
not engage, then the pain only increases on both sides over time.
Overall, the only long term solution is something like:
 "Yes, I see what you want, but how you are doing is stupid.
  Let's work together and see if there is a better way to do this"
In most cases, the kernel has already exposed a bunch of API's that make
the whole effort possible (uio, tun/tap, ...); either we say
"ignore those API's, they are toys you are not supposed to actually
use for real products"
or be professional and make them into first class citizens.
