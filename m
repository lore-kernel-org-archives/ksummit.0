Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 3896A2FA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 11:54:39 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 504351FA97
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 May 2014 11:54:37 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Mark Brown <broonie@sirena.org.uk>
Date: Wed, 14 May 2014 14:11:25 +0200
Message-ID: <1904209.2bUKgQ0eOo@vostro.rjw.lan>
In-Reply-To: <20140512203153.GH12304@sirena.org.uk>
References: <1872038.43ncqEMWSx@avalon> <1890814.sS5FutD9xo@avalon>
	<20140512203153.GH12304@sirena.org.uk>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] PM dependencies
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Monday, May 12, 2014 09:31:53 PM Mark Brown wrote:
> On Mon, May 12, 2014 at 10:27:14PM +0200, Laurent Pinchart wrote:
> > On Monday 12 May 2014 21:14:38 Mark Brown wrote:
> 
> > > This is something ASoC has been resolving since forever with the machine
> > > drivers, Russell King recently created a generic version of the code
> > > that does the dependency deferral glue (see linux/component.h).  It's
> > > not a model of elegance but it ends up getting the job done.
> 
> > That solves the probe time dependencies, but unfortunately not the runtime PM 
> > dependencies.
> 
> It also solves the system suspend dependencies.

Well, I'm not sure about that.  How does it do that, exactly?

Rafael
