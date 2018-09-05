Return-Path: <gregkh@linuxfoundation.org>
Date: Wed, 5 Sep 2018 09:48:40 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Rodrigo Vivi <rodrigo.vivi@gmail.com>
Message-ID: <20180905074840.GB29052@kroah.com>
References: <CABVU7+vBVivOZ32aEokJ0y3=C2z0Ev12O3vSVfyTC9TDrBOr8A@mail.gmail.com>
	<20180905042246.GA2977@mtr-leonro.mtl.com>
	<CABVU7+u+F1CXAW48_XfhLy59BOTxAS-qa_pG4Xjkki=f4Rr9Kg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CABVU7+u+F1CXAW48_XfhLy59BOTxAS-qa_pG4Xjkki=f4Rr9Kg@mail.gmail.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Challenges in Upstream
 vs. Embargoed Development in Intel Graphics.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Sep 04, 2018 at 09:49:13PM -0700, Rodrigo Vivi wrote:
> On Tue, Sep 4, 2018 at 9:22 PM Leon Romanovsky <leon@kernel.org> wrote:
> >
> > On Tue, Sep 04, 2018 at 12:54:16PM -0700, Rodrigo Vivi wrote:
> > > Hi there,
> > >
> > > I've submitted a proposal for plumber's referred track. There, I want to
> > > talk
> > > about tools and challenges we have on embargo development vs upstream one
> > > and
> > > how to get focus on upstream first and upstream always mentality.
> > >
> > > The name of plumbers proposal talk is:
> > > "Unveiling Intel Graphics Internal Development"
> > >
> > > I'm not sure if the talk will get accepted, but anyway I'd like to have the
> > > chance to talk to other maintainers to exchange views on different ways of
> > > maintaining this kind of embargo development including challenges, tools,
> > > processes, and rules.
> > >
> > > So I'm interested in hallway tracks of Maintainer / Kernel Summit, or maybe
> > > a
> > > bof session if there's interest.
> > >
> > > Please let me know if there's interested or if further information and/or
> > > clarification is needed.
> >
> > What is "embargo development"? Are you referring to US government
> > restrictions or to anything else?
> 
> No. nothing to do with government.
> Embargoed by company's temporary restrictions.
> 
> Sorry for not being clear here.

Why do we care about something like this?  It sounds like it is an Intel
issue in that they want to delay pushing stuff upstream.  Why does
upstream care about this?

> > Also can you please explain why should we know about internal Intel
> > development flow?
> 
> First of all I don't believe that we are the only one that need to
> keep this kind of flow and i915 has a very active development and we
> are strongly committed with upstream development. Our golden rules for
> internal development is upstream first, upstream always.

Great!  So if this rule runs into opposition to people within your
company, doesn't that sound like a meeting with those company members is
the best solution?

> So, maybe sharing some knowledge and lessons we learned on the past
> years might be useful to someone else that might still struggle with
> closed source style of development.

Ah, so you want to talk about how to change your process to work better
with companies that don't like doing upstream-first work?  That sounds
like a nice talk, but you need to make that a bit more clear here :)

> Also we have some challenges on keeping everything updated and ready
> for upstreaming at any moment.

"any moment"?  Don't you know this ahead of time?  If not, that sounds
like a company problem...

thanks,

greg k-h
