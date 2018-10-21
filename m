Return-Path: <SRS0=6f/a=NB=linuxfoundation.org=gregkh@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 74E34D27
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 21 Oct 2018 07:18:24 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1E622A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 21 Oct 2018 07:18:24 +0000 (UTC)
Date: Sun, 21 Oct 2018 09:18:21 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <20181021071821.GD11176@kroah.com>
References: <20181020134908.GA32218@kroah.com>
	<20181020135058.GF32218@kroah.com>
	<CAMuHMdUR_7GgFL0wqh9AdEq=HWmxPB=HzarEgY5TeLo67+S1LA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMuHMdUR_7GgFL0wqh9AdEq=HWmxPB=HzarEgY5TeLo67+S1LA@mail.gmail.com>
Cc: mishi@linux.com, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [PATCH 5/7] Code of Conduct Interpretation:
 Put in the proper URL for the committee
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, Oct 20, 2018 at 09:01:57PM +0200, Geert Uytterhoeven wrote:
> Hi Greg,
> 
> On Sat, Oct 20, 2018 at 3:53 PM Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> > There was a blank <URL> reference for how to find the Code of Conduct
> > Committee.  Fix that up by pointing it to the correct kernel.org website
> > page location.
> >
> > Acked-by: Chris Mason <clm@fb.com>
> > Acked-by: Olof Johansson <olof@lixom.net>
> > Acked-by: Theodore Ts'o <tytso@mit.edu>
> > Acked-by: Thomas Gleixner <tglx@linutronix.de>
> > Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> 
> Thanks for your patch!
> 
> > --- a/Documentation/process/code-of-conduct-interpretation.rst
> > +++ b/Documentation/process/code-of-conduct-interpretation.rst
> > @@ -123,8 +123,9 @@ Enforcement
> >
> >  The address listed in the Code of Conduct goes to the Code of Conduct
> >  Committee.  The exact members receiving these emails at any given time
> > -are listed at <URL>.  Members can not access reports made before they
> > -joined or after they have left the committee.
> > +are listed at https://kernel.org/code-of-conduct.html.  Members can not
> > +access reports made before they joined or after they have left the
> > +committee.
> 
> This seems to be the wrong URL? It just points to the CoC, not to the TAB
> members.

The information at that web page will be updatd "soon" with the
information about the committee.  Please give us a few more days for
this, as we are all traveling at the moment...

thanks,

greg k-h
