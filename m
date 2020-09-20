Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D8A3271321
	for <lists+linux1394-devel@lfdr.de>; Sun, 20 Sep 2020 11:18:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1kJvUY-0007xp-DO; Sun, 20 Sep 2020 09:18:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pavel@ucw.cz>) id 1kJvUW-0007xh-Jg
 for linux1394-devel@lists.sourceforge.net; Sun, 20 Sep 2020 09:18:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oHMRaKePKDpMm9PUkDiudoTo4I5o6HLNOcre/4w/Mis=; b=Z32FCDV2ftQAHBJQGZniAuqH98
 qIUOYN3x/nQhkxVU9SRkyggygLcM7u2MYsYhnF6Atbjeure1APj9prtCc25px+4LR3vQp/Tn1ehoA
 VC1KlOAvoQ61RWGX0g5he/0gGPJGFslv9DSs5UPsQPCNeTTA63reEQJBHzjHh82q1t4k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=oHMRaKePKDpMm9PUkDiudoTo4I5o6HLNOcre/4w/Mis=; b=l
 rZBTdYe1WS8raOfYRgICNQJPl2BTTHrNV4CYlOGnNeSw9z/NMdG470/d89opwNQWdMwDhatHNmlLO
 /qR+m9bu3YUOdYwX5Y0jfMl7jMU3zZrCSVFaOZOGPPoTsb+t8XA5zuKZhjblVijywhFvw4iFGDoE9
 zbXxQAbF7HbpOJmU=;
Received: from jabberwock.ucw.cz ([46.255.230.98])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kJvUN-000Dnx-GM
 for linux1394-devel@lists.sourceforge.net; Sun, 20 Sep 2020 09:18:40 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 0ABE51C0B94; Sun, 20 Sep 2020 11:01:39 +0200 (CEST)
Date: Sun, 20 Sep 2020 11:01:37 +0200
From: Pavel Machek <pavel@ucw.cz>
To: stefanr@s5r6.in-berlin.de, mchehab@kernel.org,
 linux-media@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Subject: [PATCH] media: firewire: fix memory leak
Message-ID: <20200920090137.GA4628@amd>
MIME-Version: 1.0
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: cuni.cz]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kJvUN-000Dnx-GM
X-BeenThere: linux1394-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux IEEE 1394 development list
 <linux1394-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=linux1394-devel>
List-Post: <mailto:linux1394-devel@lists.sourceforge.net>
List-Help: <mailto:linux1394-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4323548529225708290=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net


--===============4323548529225708290==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="BXVAT5kNtrzKuDFl"
Content-Disposition: inline


--BXVAT5kNtrzKuDFl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


Fix memory leak in node_probe.
   =20
Signed-off-by: Pavel Machek (CIP) <pavel@denx.de>

diff --git a/drivers/media/firewire/firedtv-fw.c b/drivers/media/firewire/f=
iredtv-fw.c
index 3f1ca40b9b98..8a8585261bb8 100644
--- a/drivers/media/firewire/firedtv-fw.c
+++ b/drivers/media/firewire/firedtv-fw.c
@@ -272,8 +272,10 @@ static int node_probe(struct fw_unit *unit, const stru=
ct ieee1394_device_id *id)
=20
 	name_len =3D fw_csr_string(unit->directory, CSR_MODEL,
 				 name, sizeof(name));
-	if (name_len < 0)
-		return name_len;
+	if (name_len < 0) {
+		err =3D name_len;
+		goto fail_free;
+	}
 	for (i =3D ARRAY_SIZE(model_names); --i; )
 		if (strlen(model_names[i]) <=3D name_len &&
 		    strncmp(name, model_names[i], name_len) =3D=3D 0)

--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--BXVAT5kNtrzKuDFl
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl9nGnEACgkQMOfwapXb+vIPDgCbBqZ8DUqfyQuw9h63tNsVmkPG
qZgAnRHF3jWltsW7jYZBydIhezO2zUp0
=lkZZ
-----END PGP SIGNATURE-----

--BXVAT5kNtrzKuDFl--


--===============4323548529225708290==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============4323548529225708290==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============4323548529225708290==--

