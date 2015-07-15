Return-Path: <James.Bottomley@Hansenpartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A0E32AC2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 20:15:26 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 29009A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 15 Jul 2015 20:15:26 +0000 (UTC)
In-Reply-To: <20150715154151.34959ffc@gandalf.local.home>
References: <55A1407E.5080800@oracle.com>
	<CAMuHMdUK+LZrp9QxPS0wSJzFZVAr_cihxJnFJybo5nb7U_t7xg@mail.gmail.com>
	<55A26C5B.8060007@oracle.com> <20150713105210.6e367f4b@noble>
	<20150713205125.GA26074@kroah.com>
	<20150715154151.34959ffc@gandalf.local.home>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain;
 charset=UTF-8
From: James Bottomley <James.Bottomley@Hansenpartnership.com>
Date: Wed, 15 Jul 2015 23:14:51 +0300
To: Steven Rostedt <rostedt@goodmis.org>,Greg KH <greg@kroah.com>
Message-ID: <979018ea-655c-4ada-a44e-55774016f193@email.android.com>
Cc: Sasha Levin <sasha.levin@oracle.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Issues with stable process
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>



On July 15, 2015 10:41:51 PM GMT+03:00, Steven Rostedt <rostedt@goodmis.org> wrote:
>On Mon, 13 Jul 2015 13:51:25 -0700
>Greg KH <greg@kroah.com> wrote:
>
>
>> So I don't think that a manditory 2 week waiting period is going to
>help
>> out much here, sorry.
>
>The exact same thing can be said about having patches brew in -next for
>2 weeks (or whatever) before going to Linus. If issues are not caught
>in Linus's tree after two weeks, I highly doubt two weeks in -next will
>be any better.

Can we get off the two week delay hobby horse?  The contention is that we need some incubation for 0day and -next to run.  I think a couple of days is sufficient but we can debate that.  The thing I think is irresponsible is immediate onward transmission of alleged fixes without exposing them to our test and integration infrastructure because that induces unnecessary regressions into the -rc cycle.

James

>-- Steve
>_______________________________________________
>Ksummit-discuss mailing list
>Ksummit-discuss@lists.linuxfoundation.org
>https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

-- 
Sent from my Android device with K-9 Mail. Please excuse my brevity.
