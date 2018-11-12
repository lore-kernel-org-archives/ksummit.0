Return-Path: <jmorris@namei.org>
Date: Tue, 13 Nov 2018 04:15:50 +1100 (AEDT)
From: James Morris <jmorris@namei.org>
To: "Theodore Y. Ts'o" <tytso@mit.edu>
In-Reply-To: <20181110212159.GA12818@thunk.org>
Message-ID: <alpine.LRH.2.21.1811130412460.7992@namei.org>
References: <1541721842.3774.2.camel@HansenPartnership.com>
	<35402D8E-0294-4E34-BE8B-22BCBC20BF66@fb.com>
	<41b03a5b-1af4-0a87-2736-016f79d4d1ca@kernel.org>
	<20181109190305.GD21078@thunk.org>
	<e0ec26aa685f53e741f66e757a2cf29307ce3b7e.camel@perches.com>
	<20181110212159.GA12818@thunk.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Tech Board Discuss <Tech-board-discuss@lists.linux-foundation.org>
Subject: Re: [Ksummit-discuss] TAB non-nomination
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, 10 Nov 2018, Theodore Y. Ts'o wrote:

> On Fri, Nov 09, 2018 at 11:23:26AM -0800, Joe Perches wrote:
> > I believe that did not happen as described as at least
> > I was not asked for input/comment/sign-off and I ahm
> > well within that top 200 or so list.
> 
> I'm not sure precisely which metrics Greg used when he created his
> list, but using "git log --since="July 2017" v4.18" and piping it into
> the perl script I use to count Signed-off-by, Acked-by, and
> Reviewed-by, lines, you're about #240; so you're in the top 250, but
> not the top 200.

Please also consider maintainers who are pulling in sub-trees without 
adding signed-off-by to each patch.


-- 
James Morris
<jmorris@namei.org>
