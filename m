Return-Path: <gregkh@linuxfoundation.org>
Date: Tue, 14 Jul 2015 17:01:36 -0700
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Sasha Levin <sasha.levin@oracle.com>
Message-ID: <20150715000136.GA7192@kroah.com>
References: <55A1407E.5080800@oracle.com> <55A38FD6.2070103@huawei.com>
	<55A3E383.6070107@oracle.com> <55A4DFB8.4050901@huawei.com>
	<55A515F2.5090001@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <55A515F2.5090001@oracle.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Issues with stable process
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Jul 14, 2015 at 10:00:18AM -0400, Sasha Levin wrote:
> On 07/14/2015 06:08 AM, Zefan Li wrote:
> > I agree it will save us a lot of work if we work together, and that will better ensure
> > a fix won't be missing from some stable trees.
> > 
> > It helps more for maintainers who work on stable tress that are very close in version.
> > Take Ben and I as an example, if I already manually backport a commit to 3.4.y, Ben will
> > get notified. Now Ben can just pick it for 3.2.y, and it probably can be applied cleanly,
> > thus save his time.
> > 
> > Maybe there should be a workshop during KS for stable tree maintainers to get together
> > and discuss how to work on how to share each other's work.
> > 
> > Another related issue is we all have our own scripts. If we share a set of common scripts,
> > then we can benefit from each other's improvements on those scripts. Ben once brought this
> > up in stable mailing list:
> > 
> > http://www.spinics.net/lists/stable/msg89430.html
> 
> I agree, a workshop could be beneficial in improving the coordination between stable tree
> maintainers, and hopefully reducing duplicate work in the future.
> 
> Greg, do you have any objections to pursuing this idea?

No objection, but I really don't want to have to rewrite my scripts
again :)

As for "duplicate work", I don't see a ton of it happening in that all
of us publish our patches and trees and it's easy to pick from them if
you want to.

But we can talk about it in Seoul, in person would make it easier.

thanks,

greg k-h
