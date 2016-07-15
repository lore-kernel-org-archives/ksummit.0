Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1C9A0950
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 15 Jul 2016 11:40:51 +0000 (UTC)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
	[66.111.4.29])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9D058142
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 15 Jul 2016 11:40:50 +0000 (UTC)
Date: Fri, 15 Jul 2016 20:40:37 +0900
From: Greg KH <greg@kroah.com>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20160715114037.GA27936@kroah.com>
References: <CAPcyv4gQ+3aF+DhRVDioBD7O63VRDG+VAm3x0zVDDh4hg8kJig@mail.gmail.com>
	<718BE1FD-6169-4205-A905-53F997D5943A@primarydata.com>
	<5785C80F.4030707@linaro.org> <20160713090739.GA18037@kroah.com>
	<20160713143447.GH9976@sirena.org.uk>
	<20160714031753.GA28722@kroah.com>
	<20160714100603.GJ9976@sirena.org.uk>
	<20160715002239.GA31603@kroah.com> <5788337F.8000500@roeck-us.net>
	<20160715111034.GF30372@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160715111034.GF30372@sirena.org.uk>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Trond Myklebust <trondmy@primarydata.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel unit testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jul 15, 2016 at 12:10:34PM +0100, Mark Brown wrote:
> On Thu, Jul 14, 2016 at 05:51:11PM -0700, Guenter Roeck wrote:
> > On 07/14/2016 05:22 PM, Greg KH wrote:
> > > On Thu, Jul 14, 2016 at 11:06:03AM +0100, Mark Brown wrote:
> 
> > > Ok, there's no need for everyone to use the same messy tree, but perhaps
> > > Linaro could participate with LTSI to help make something that more
> > > people can all use?  No need to keep duplicating the same work...
> 
> > > But this is way off-topic here, sorry.
> 
> > Maybe a separate topic, and not entirely feasible for the kernel summit,
> > but it might be worthwhile figuring out why companies are or are not
> > using LTSI. My major problem with it was always that it is just a collection
> 
> I do think that could be a useful topic to cover in stable discussions
> at KS, we've always focused on the stable trees but there's a much
> broader spectrum of work going on there.

I agree it would be fun to talk about it, but the relevance of it to 90%
of the people in the room whose day-job doesn't have to deal with that
type of thing, is probably very low.

Let's stick to the stable workflow issues here, not the "why aren't
companies getting their code upstream and have to keep these big trees"
issue.  Which might be a fine separate topic to bring up, but usually we
all know the reasons there, and no one who is invited to KS can resolve
them...

> > of patches, not a kernel tree, meaning merges or cherry-picks are non-trivial.
> > Sure, one can create a kernel tree from it, but that is not the same.
> 
> This is actually the main reason why I've never got around to pushing
> things back into LTSI (it has been a little while since I last did that
> admittedly).  The effort involved in figuring out the tooling for LTSI
> always got in the way before anything productive came of it, having a
> directly usable git tree would be *so* much easier.

Ok fine, I'll work on that, but if I do so, I will expect to see patches
from you for it :)

thanks,

greg k-h
