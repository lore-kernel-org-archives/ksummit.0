Return-Path: <serge@mail.hallyn.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 53FAD932
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 18 Aug 2014 04:00:17 +0000 (UTC)
Received: from mail.hallyn.com (static.92.5.9.176.clients.your-server.de
	[176.9.5.92])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A8C311F8AC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 18 Aug 2014 04:00:16 +0000 (UTC)
Date: Mon, 18 Aug 2014 06:00:14 +0200
From: "Serge E. Hallyn" <serge@hallyn.com>
To: "Eric W. Biederman" <ebiederm@xmission.com>
Message-ID: <20140818040014.GA10623@mail.hallyn.com>
References: <87lhqmxyxn.fsf@x220.int.ebiederm.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87lhqmxyxn.fsf@x220.int.ebiederm.org>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	"Serge E. Hallyn" <serge@hallyn.com>
Subject: Re: [Ksummit-discuss] Mount API?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Quoting Eric W. Biederman (ebiederm@xmission.com):
> 
> Serge E. Hallyn <serge@hallyn.com> writes:
> > Quoting Andy Lutomirski (luto at amacapital.net):
> > > ISTR Eric Biederman mentioned this, but I don't know whether he's
> > > volunteering or whether he'll be there.
> > > 
> > > I could try to write it, but my VFS track record is pretty bad.
> > > On Aug 16, 2014 9:00 PM, "Jan Kara" <jack at suse.cz> wrote:
> > > 
> > > > On Sat 16-08-14 13:43:40, Andy Lutomirski wrote:
> > > > > Is anyone interested in discussing a new mount API in the unconference
> > > > > track?
> > > > >
> > > > > Think bindmountat, etc.
> > > >   We can discuss however will there be anyone who's going to write the
> > > > code? I know Miklos Szeredi was looking into that but it didn't go anywhere
> > > > AFAIK and he won't be at KS/LinuxCon. And I'm not sure if Al will be at the
> > > > conference..
> > 
> > I'm quite certain Eric will at least be at the venue.  Eric?
> 
> I am here and I will be here all week.
> 
> With respect to bind mounts I was mentioning a patch that someone
> was actively working on a week or two ago to allow at least the read-only
> flag to be specified when a bind mount is created.
> 
> For a whole new clean mount API I don't know.  I do think it would be
> productive for us to get together and talk.  Weather that is at the
> container session on Friday or elswhere I don't know.

If Al isn't there on M-T, then Friday works great for me.

thanks,
-serge
