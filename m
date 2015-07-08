Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DB44CB68
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 14:59:13 +0000 (UTC)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
	[66.111.4.29])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1C00CB0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 14:59:13 +0000 (UTC)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id 49A252087F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 10:59:12 -0400 (EDT)
Date: Wed, 8 Jul 2015 07:59:10 -0700
From: Greg KH <greg@kroah.com>
To: Jiri Kosina <jkosina@suse.com>
Message-ID: <20150708145910.GA11945@kroah.com>
References: <alpine.LNX.2.00.1507071324090.10183@pobox.suse.cz>
	<20150707224025.GJ11162@sirena.org.uk>
	<20150707225223.GG12491@dtor-ws> <20150708021619.GC3102@kroah.com>
	<alpine.LNX.2.00.1507080957360.10183@pobox.suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.LNX.2.00.1507080957360.10183@pobox.suse.cz>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] services needed from kernel.org
 infrastructure
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Jul 08, 2015 at 10:02:36AM +0200, Jiri Kosina wrote:
> On Tue, 7 Jul 2015, Greg KH wrote:
> 
> > > > Those are useful, I know Greg has one and I just wrote one too.  I'm not
> > > > sure it needs to be on the server side though, they can also be done
> > > > from the client which lets you try to fine tune things more readily.
> > > 
> > > If either of you could share the scripts that would be great.
> > 
> > Mine is based on Andrew's scripts, and can be found buried in my
> > "gregkh-linux" repo which is a shadow of my 'linux/' subdir on my
> > development machines, specifically this file:
> > 	https://github.com/gregkh/gregkh-linux/blob/master/work/do.sh
> 
> Well, I think you've nicely demonstrated the reason why I think there 
> should be a central machinery; perhaps as a stanard open-source project, 
> i.e reviewed, contributed to, and shared by everybody.
> 
> The "everybody has his home-brew hacked-up script" model is just 
> unnecessary duplication of work a brings potential for unnecessary bugs.
> 
> For example, please correct me if I am wrong, but I believe that if I send 
> you a patch that would have authorship
> 
> 	Jiri Kosina <jkosina`rm -rf .`@suse.com>
> 
> and you wouldn't notice prior to applying it using the above do.sh, I 
> think your precious tree is gone.

Note, I don't have "precious" trees, nor "precious" development systems,
that's what git is for :)

But you are right in that this isn't good, and Andrew's scripts also
have the same bug as mine are based on his.  But this isn't a matter of
them not being open, both of ours have been published publicly for over
a decade.

Every 6 months or so I start to rewrite the script to use a "proper"
email address parser library, and give up.  I guess now I have to do it
for real, thanks for giving me a reason to do so.

> This would be caught immediately if it's properly maintained "project".

Hm, ok, but different maintainers have different needs.  James's git
hooks are also really nice, and work for some workflows (note, I use
them for some stable workflows).  Wolfram has published his scripts that
he uses for applying and testing patches in the past as well, and while
they were great for him, they didn't fit mine at the time.

So given 4 different maintainers, all of whom have posted their tools,
all of them are different given different methods of working.  Creating
one set of tools might be a bit hard based on this tiny sample size
already...

But, I'm willing to try, and clean up my mess, I'll work on making my
scripts "work robustly" and publish them and take feedback.  Ideally I
can tie them into the stable patch review process as well, as I know
others have been asking for those scripts to be unified into something
that someone other than me can get working.

thanks,

greg k-h
