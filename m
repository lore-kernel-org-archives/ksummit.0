Return-Path: <ebiederm@xmission.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 42DC792B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 18 Aug 2014 03:29:05 +0000 (UTC)
Received: from out03.mta.xmission.com (out03.mta.xmission.com [166.70.13.233])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1B16E1F88A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 18 Aug 2014 03:29:04 +0000 (UTC)
From: ebiederm@xmission.com (Eric W. Biederman)
To: "Serge E. Hallyn" <serge@hallyn.com> ,
	Andy Lutomirski <luto@amacapital.net>
Date: Sun, 17 Aug 2014 20:24:20 -0700
Message-ID: <87lhqmxyxn.fsf@x220.int.ebiederm.org>
MIME-Version: 1.0
Content-Type: text/plain
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Mount API?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


Serge E. Hallyn <serge@hallyn.com> writes:
> Quoting Andy Lutomirski (luto at amacapital.net):
> > ISTR Eric Biederman mentioned this, but I don't know whether he's
> > volunteering or whether he'll be there.
> > 
> > I could try to write it, but my VFS track record is pretty bad.
> > On Aug 16, 2014 9:00 PM, "Jan Kara" <jack at suse.cz> wrote:
> > 
> > > On Sat 16-08-14 13:43:40, Andy Lutomirski wrote:
> > > > Is anyone interested in discussing a new mount API in the unconference
> > > > track?
> > > >
> > > > Think bindmountat, etc.
> > >   We can discuss however will there be anyone who's going to write the
> > > code? I know Miklos Szeredi was looking into that but it didn't go anywhere
> > > AFAIK and he won't be at KS/LinuxCon. And I'm not sure if Al will be at the
> > > conference..
> 
> I'm quite certain Eric will at least be at the venue.  Eric?

I am here and I will be here all week.

With respect to bind mounts I was mentioning a patch that someone
was actively working on a week or two ago to allow at least the read-only
flag to be specified when a bind mount is created.

For a whole new clean mount API I don't know.  I do think it would be
productive for us to get together and talk.  Weather that is at the
container session on Friday or elswhere I don't know.


Eric
