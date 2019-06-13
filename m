Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A730BEA8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Jun 2019 14:25:39 +0000 (UTC)
Received: from casper.infradead.org (casper.infradead.org [85.118.1.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1C9C176D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Jun 2019 14:25:39 +0000 (UTC)
Date: Thu, 13 Jun 2019 11:25:33 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <20190613112533.2176c5d4@coco.lan>
In-Reply-To: <f2f4a212-54f4-70a2-5a5d-9d45b3e1b5ae@linuxfoundation.org>
References: <20190612085405.6045d95d@lwn.net>
	<f2f4a212-54f4-70a2-5a5d-9d45b3e1b5ae@linuxfoundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Documentation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Wed, 12 Jun 2019 12:22:55 -0600
Shuah Khan <skhan@linuxfoundation.org> escreveu:

> On 6/12/19 8:54 AM, Jonathan Corbet wrote:
> > What could be more fun than talking about kernel documentation?  Things we
> > could get into:
> > 
> >   - The state of the RST transition, what remains to be done, whether it's
> >     all just useless churn that makes the documentation worse, etc.
> > 
> >   - Things we'd like to improve in the documentation toolchain.
> > 
> >   - Overall organization of Documentation/ and moving docs when the need
> >     arises.  It seems I end up fighting about this more than just about
> >     anything else, but I think it's important to organize our docs for the
> >     convenience of the people using them.
> > 
> >   - The ultimate vision for kernel docs (for now).  RST conversion and
> >     imposing some organization are important, but they will not,
> >     themselves, give us a coherent set of documentation.  What can we do to
> >     have documentation that is useful, current, and maintainable, rather
> >     than the dusty attic we have now?
> >   
> 
> The first step is identifying the ones that are out of date and/or
> incorrect. I think this is probably the most time consuming part
> and the second is start updating.

I would do just the opposite: convert the documentation, then
update it.

The reason is that, when someone sends a patch to the documentation,
people tend to look more closely on it, and we start receiving
updates for it.

Ok, this doesn't happen every time, but it is still worth.

There's another thing to consider here: there are lots of docs
written for "stable" subsystems, in the sense that the documented 
code doesn't change for a lot of time (except for trivial patches
not directly related to it.

While doing large chunks of code conversion, I noticed that there
are lots of still valid documents that fit on this.

There's a big issue with those "stable" subsystems: they tend
to not have any active maintainer anymore. So, there are not
much people that are willing to actively review patches to it.

So, my advice here is to really invert things:

- do the conversion;
- find a good place to put the converted the book;
- add kernel-doc markups to be sure that the symbols will always
  match upstream;
- review the remaining content of the docs.

> I am currently putting together a task list for mentorship program
> with a goal to create tasks that would more meaningful and helpful
> instead of whitespace patches.
> 
> I will gladly add documentation tasks to the list to help improve
> the documentation.

I can surely mentor people interested on doing such tasks.

> 
> thanks,
> -- Shuah
> 
> 
> 
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss



Thanks,
Mauro
