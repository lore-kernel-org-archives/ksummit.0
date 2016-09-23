Return-Path: <laurent.pinchart@ideasonboard.com>
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Alex Shi <alex.shi@linaro.org>
Date: Fri, 23 Sep 2016 16:40:57 +0300
Message-ID: <3962570.KQ4UqA6kPC@avalon>
In-Reply-To: <57E52DD6.40008@linaro.org>
References: <57C78BE9.30009@linaro.org> <39885166.uICe7DmWXy@avalon>
	<57E52DD6.40008@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: "ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [LTSI-dev] [Stable kernel] feature
	backporting collaboration
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Alex,

On Friday 23 Sep 2016 21:27:50 Alex Shi wrote:
> On 09/23/2016 08:28 PM, Laurent Pinchart wrote:
> > Yes, it's also a budget issue, which in the end requires convincing the
> > right level of management that investing in upstream will pay back. Once
> > you're at that point the rest becomes a matter of "just doing it" (with
> > all the problems associated with performing the real upstreaming work).
> > 
> > As another example, the strategy we're using at Renesas (who has perfectly
> > understood the value of upstreaming kernel code) is to develop the BSP and
> > upstream support in parallel in different teams. The BSP team is bound to
> > customer deadlines, while the upstream team has more freedom. The
> > upstreaming priorities are negotiated between the two teams, and when the
> > BSP team rebases its tree on upstream the delta shrinks. It will never
> > get down to zero (as BSP contain quite a few product-specific hacks that
> > have a really bad effort/gain upstreaming ratio), but if the upstream
> > team is correctly staffed it usually stays reasonable.
> > 
> > The BSP delta is also a good indicator of how good the upstreaming process
> > is going, and can be regularly reviewed to identify issues that need to
> > be fixed upstream.
> 
> Oh, will glad to know the details on Renesas, the 'upstream first'
> model, and how it run and effect. Thanks for sharing.
> 
> Just a question, how do you deal with the user software compatibility
> issue when kernel API change in rebasing on upstream? Such as the
> libcgroup compatibility issue with cgroupv2.

There's no hard rule there, it's decided on a case-by-case basis. Working on 
products make it easier in the sense that you can usually update the userspace 
code along with the kernel. It all depends what stability guarantee you want 
to give to the consumers of the kernel.

-- 
Regards,

Laurent Pinchart
