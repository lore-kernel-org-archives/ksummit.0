Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A6621DF7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 28 Aug 2015 17:48:12 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 16DCD175
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 28 Aug 2015 17:48:12 +0000 (UTC)
Message-ID: <1440784090.2202.40.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Theodore Ts'o <tytso@mit.edu>
Date: Fri, 28 Aug 2015 10:48:10 -0700
In-Reply-To: <20150828173005.GA31345@thunk.org>
References: <20150828173005.GA31345@thunk.org>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] The first round of kernel summit invites have
 gone out...
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 2015-08-28 at 13:30 -0400, Theodore Ts'o wrote:
> A number of program committee members have reported that their invites
> ended up in their SPAM folder.  My apologies; I've checked my DKIM and
> SPF settings, and they all look correct, but maybe some spam filter
> gone mad thinks invitations to technical conferences in Asia are
> automatically spam or something ridiculous like that.
> 
> So if you could, please check your spam folders.  We will be doing
> another round of invites next week, so if you haven't received an
> invite yet, please hold tight.  There were a large number of people to
> go through, and only a limited amount of time for the conference call.
> 
> If you have received an invite, and won't be able to attend, please
> let us know right away, so we can give someone else your spot.

Spamassassin is perfectly happy with the invitation email; this is what
I get:

X-spam-status:	No, score=-3.3 required=5.0
tests=AWL,BAYES_00,DKIM_SIGNED,
DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_LOW,T_RP_MATCHES_RCVD

So all the community filters work just fine and you get a low score.
The problem is that there seem to be a lot of snake oil commercial
companies out there that do really stupid things.  This is the worst
I've seen for my domain:

host fe-stp.mail.saunalahti.fi[62.142.5.93] said:
    554 5.7.1 <bedivere.hansenpartnership.com[66.63.167.143]>: Client host
    rejected: Too much foobar from 66.63.160.0/19 (in reply to RCPT TO command)

That basically means the entire service provider netblock is blacklisted
because someone bought a co-lo to send spam ... talk about group
punishments.  The problem is that companies trust services they pay for
(however unreliable the providers are) so as this creeps along we're
going to find large areas of the internet not accepting email from
people who don't send it from a large mail aggregator (like gmail)
because setting up a spam list based on extrapolation from a few reports
is a cheap thing to do.

James
