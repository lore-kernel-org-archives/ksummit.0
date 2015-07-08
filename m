Return-Path: <jkosina@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EED95982
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 08:02:53 +0000 (UTC)
Received: from mail.emea.novell.com (mail.emea.novell.com [130.57.118.101])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1646A118
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  8 Jul 2015 08:02:52 +0000 (UTC)
Date: Wed, 8 Jul 2015 10:02:36 +0200 (CEST)
From: Jiri Kosina <jkosina@suse.com>
To: Greg KH <greg@kroah.com>
In-Reply-To: <20150708021619.GC3102@kroah.com>
Message-ID: <alpine.LNX.2.00.1507080957360.10183@pobox.suse.cz>
References: <alpine.LNX.2.00.1507071324090.10183@pobox.suse.cz>
	<20150707224025.GJ11162@sirena.org.uk>
	<20150707225223.GG12491@dtor-ws> <20150708021619.GC3102@kroah.com>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
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

On Tue, 7 Jul 2015, Greg KH wrote:

> > > Those are useful, I know Greg has one and I just wrote one too.  I'm not
> > > sure it needs to be on the server side though, they can also be done
> > > from the client which lets you try to fine tune things more readily.
> > 
> > If either of you could share the scripts that would be great.
> 
> Mine is based on Andrew's scripts, and can be found buried in my
> "gregkh-linux" repo which is a shadow of my 'linux/' subdir on my
> development machines, specifically this file:
> 	https://github.com/gregkh/gregkh-linux/blob/master/work/do.sh

Well, I think you've nicely demonstrated the reason why I think there 
should be a central machinery; perhaps as a stanard open-source project, 
i.e reviewed, contributed to, and shared by everybody.

The "everybody has his home-brew hacked-up script" model is just 
unnecessary duplication of work a brings potential for unnecessary bugs.

For example, please correct me if I am wrong, but I believe that if I send 
you a patch that would have authorship

	Jiri Kosina <jkosina`rm -rf .`@suse.com>

and you wouldn't notice prior to applying it using the above do.sh, I 
think your precious tree is gone.

This would be caught immediately if it's properly maintained "project".

Thanks,

-- 
Jiri Kosina
SUSE Labs
