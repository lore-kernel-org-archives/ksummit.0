Return-Path: <laurent.pinchart@ideasonboard.com>
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Theodore Ts'o <tytso@mit.edu>
Date: Fri, 23 Sep 2016 15:28:21 +0300
Message-ID: <39885166.uICe7DmWXy@avalon>
In-Reply-To: <20160922221451.tdh66pm7awzdzzb5@thunk.org>
References: <57C78BE9.30009@linaro.org> <20160922162218.GN7994@sirena.org.uk>
	<20160922221451.tdh66pm7awzdzzb5@thunk.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: "ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [Stable kernel] feature backporting
	collaboration
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Ted,

On Thursday 22 Sep 2016 18:14:51 Theodore Ts'o wrote:
> On Thu, Sep 22, 2016 at 05:22:18PM +0100, Mark Brown wrote:
> > > That's the strategy we used at Nokia when developing the N900 and N9. It
> > > was quite painful though, it was largely believed among the developers
> > > that having separate upstream and product teams would have been better.
> > 
> > Yeah, this is partly a preference thing and also a size thing - if the
> > organization is too small it's not really sustainable to have dedicated
> > team, and if you do split them then there's a big risk that information
> > will stop flowing effectively between the two teams which defeats a lot
> > of the point.
> 
> Having a single team is also helpful if you require that the engineers
> who are responsible for forwarding the patch to newer kernels are also
> responsible for getting the patches upstream.  This way, the pain of
> having outstanding technical debt is felt by those who are also
> responsible for doing something to reduce the technical debt.

It all depends on how upstream-oriented the developers are. In our case, the 
wish to have two separate teams was mostly due to the desire to have more time 
to spend on upstream work. Part of the challenge was to get enough budget (as 
in developer time) to work on upstream.

> One of the problem for having one-time, special purpose teams for a
> product bringup, and then breaking them up right after product lanuch
> and reassigning them to another product/team is that there is
> absolutely no incentive to pay down technical debt, and all the
> incentive in the world to leave a cr*p job for someone else to clean
> up, especially if they are given unrealistically tight deadlines.
> 
> It's "better" only to have separate product and upstream teams if the
> product team are only measured on product launch, and if no one cares
> if the upstream team is outnumbered by a factor of three compared to
> the product teams throwing cr*p over the wall.  So if it's considered
> a victory condition for the company to want to pay lip service to
> getting things upstream, but doesn't care about whether or not the
> "upstreaming" team is getting enough resources to have any chance of
> success, sure, it's "better".  But to the extent that it can hide
> problems, I suspect it can be a recipe towards building up lots of
> technical debt and sweeping it under the rug....

Yes, it's also a budget issue, which in the end requires convincing the right 
level of management that investing in upstream will pay back. Once you're at 
that point the rest becomes a matter of "just doing it" (with all the problems 
associated with performing the real upstreaming work).

As another example, the strategy we're using at Renesas (who has perfectly 
understood the value of upstreaming kernel code) is to develop the BSP and 
upstream support in parallel in different teams. The BSP team is bound to 
customer deadlines, while the upstream team has more freedom. The upstreaming 
priorities are negotiated between the two teams, and when the BSP team rebases 
its tree on upstream the delta shrinks. It will never get down to zero (as BSP 
contain quite a few product-specific hacks that have a really bad effort/gain 
upstreaming ratio), but if the upstream team is correctly staffed it usually 
stays reasonable.

The BSP delta is also a good indicator of how good the upstreaming process is 
going, and can be regularly reviewed to identify issues that need to be fixed 
upstream.

-- 
Regards,

Laurent Pinchart
