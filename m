Return-Path: <johannes@sipsolutions.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 71B0A9F2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 07:07:17 +0000 (UTC)
Received: from sipsolutions.net (s3.sipsolutions.net [5.9.151.49])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EAC79AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 07:07:16 +0000 (UTC)
Message-ID: <1436856247.2106.0.camel@sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
To: Peter =?ISO-8859-1?Q?H=FCwe?= <PeterHuewe@gmx.de>, Jonathan Corbet
	<corbet@lwn.net>
Date: Tue, 14 Jul 2015 08:44:07 +0200
In-Reply-To: <201507132146.47186.PeterHuewe@gmx.de>
References: <201507130038.01474.PeterHuewe@gmx.de>
	<CACVxJT9WjwWZUQWPk_jXOLOZsTh8HdGuKWr1ri3q02fEaFLejA@mail.gmail.com>
	<20150713114509.14f1f866@lwn.net>
	<201507132146.47186.PeterHuewe@gmx.de>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Dan Carpenter <dan.carpenter@oracle.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE-TOPIC] Documentation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 2015-07-13 at 21:46 +0200, Peter Hüwe wrote:
> Am Montag, 13. Juli 2015, 19:45:09 schrieb Jonathan Corbet:
> > On Mon, 13 Jul 2015 12:47:23 +0300
> > 
> > Alexey Dobriyan <adobriyan@gmail.com> wrote:
> > > I have counter suggestion:
> > > * remove kernel-doc official status, remove generating scripts
> > > 
> > >   because it doesn't work,
> > 
> > kerneldoc does work, after a fashion.  It works well enough that 
> > people
> > use it, and I hear about it quickly when somebody's comment change 
> > breaks
> > the docs build.  I don't think we can remove it in the absence of
> > something better.
> Jonathan, do you keep an up-to-date copy of the generated files 
> somewhere?
> (I cannot get it to work out of the box on my machine)
> 

kernel.org does, no?
https://www.kernel.org/doc/htmldocs/

johannes
