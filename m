Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 72B21A89
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  5 Jun 2014 14:21:43 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 0826D1FD4A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  5 Jun 2014 14:21:31 +0000 (UTC)
Message-ID: <1401978089.2207.14.camel@dabdike.int.hansenpartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Theodore Ts'o <tytso@mit.edu>
Date: Thu, 05 Jun 2014 07:21:29 -0700
In-Reply-To: <20140604130646.GA25092@thunk.org>
References: <20140604130646.GA25092@thunk.org>
Content-Type: text/plain; charset="ISO-8859-15"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] If you are using gmail,
 check your spam folders
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 2014-06-04 at 09:06 -0400, Theodore Ts'o wrote:
> Hi,
> 
> The first round of invites for the kernel summit was sent out over the
> weekend.
> 
> Unfortunately, it's come to my attention that at least two people who
> are using GMail had their invites trapped as spam.  This is despite
> the fact that I went to careful lengths to make sure that the
> invitation passed both SPF and DKIM checks.  A forwarded message from
> Greg K-H from his Gmail spam folder confirmed that whatever got
> GMail's anti-spam filters upset, it wasn't SPF or DKIM.  (The From
> address was tytso@thunk.org, specifically so the SPF would pass, and
> so the SPF identity would == the DKIM identity.)
> 
> Sigh.  Maybe there's some Nigerian scam involving inviting people to
> Kernel Summits, or some such.  :-(
> 
> I'm trying to investigate this internally inside Google, but in the
> meantime, if you are using Gmail as your mail reader, plesae check
> your spam filters.  I apologize in advance for the inconvenience.

I don't know if it helps, but my pull requests used to end up in Linus
spam folder on gmail before he added a specific whitelist for me.  I've
not really had trouble with other peoples' gmail addresses (that I know
of).

There are a lot of stupid spam filters out there.  The parallels one is
exchange based and it seems to classify a lot of open source related
stuff as spam (mostly patches), which is why I mostly miss things if
they don't go to the right mailing lists (I keep all my mailing list
subscriptions on hansenpartnership.com which uses spamassassin and
greylisting).

I did discover a while ago that lots of companies selling "spam"
services are completely unreliable.  Novell used to use one (forget
which) for groupwise.  It had a "this is spam" tag on the netblock of
the colo the hansenpartnership.com server was located in, however, none
of their removal procedures actually worked ... not even contacting the
company directly from a novell.com email worked ... they were only
interested in collecting money for providing a dubious service, not
actually in improving their service ...

The problem with these private services is that it's very hard to tell
if you're listed (I had to get the novell admin to diagnose) and it's
impossible to get removed if you do.  Ted you might like to check if
google has any inputs other than the ones
http://mxtoolbox.com/blacklists.aspx knows about.

James
